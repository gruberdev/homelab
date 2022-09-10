# Backend Auth providers
resource "vault_auth_backend" "github" {
  type = "github"
  path ="github"

  tune {
    max_lease_ttl      = "90000s"
    listing_visibility = "unauth"
  }
}

resource "vault_auth_backend" "userpass" {
  type = "userpass"
  path = "userpass"

  tune {
    max_lease_ttl      = "90000s"
    listing_visibility = "unauth"
  }
}

resource "vault_auth_backend" "approle" {
  type = "approle"
  path = "approle"

  tune {
    max_lease_ttl      = "90000s"
    listing_visibility = "hidden"
  }
}

# Github Backend
resource "vault_github_auth_backend" "main" {
  organization = var.vault_github_org
}

# Approle Backend
resource "vault_approle_auth_backend_role" "example" {
  backend        = vault_auth_backend.approle.path
  role_name      = "admin"
  token_policies = ["default", "dev", "prod"]
}

# Userpass Backend
resource "vault_identity_entity" "entity" {
  name = var.vault_username
  # policies = each.value.policies
  # metadata = each.value.metadata
}

resource "vault_generic_endpoint" "user" {
  depends_on           = [vault_identity_entity.entity]
  path                 = "auth/userpass/users/${var.vault_username}"
  ignore_absent_fields = true
  data_json            = file(var.vault_userdata)
}

resource "vault_generic_endpoint" "token" {
  depends_on     = [vault_generic_endpoint.user]
  path           = "auth/userpass/login/${var.vault_username}"
  disable_read   = true
  disable_delete = true
  data_json      = <<EOT
{
  "password": "${var.vault_password}"
}
EOT
}

resource "vault_identity_entity_alias" "alias" {
  depends_on     = [vault_generic_endpoint.token]
  name           = var.vault_username
  mount_accessor = vault_auth_backend.userpass.accessor
  canonical_id   = vault_identity_entity.entity.id
}

# kv secret engine
resource "vault_mount" "kv" {
  path        = "kv"
  type        = "kv"
  description = "kv backend"
}

resource "vault_generic_secret" "secrets" {
  depends_on = [vault_mount.kv]
  for_each   = fileset("secrets/", "**")
  path       = "kv/${dirname(each.key)}"
  data_json  = file("secrets/${each.key}")
}
