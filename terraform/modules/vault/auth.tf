resource "vault_auth_backend" "userpass" {
  type = "userpass"
  path = "userpass"

  tune {
    max_lease_ttl      = "90000s"
    listing_visibility = "unauth"
  }
}

# Userpass Backend
resource "vault_identity_entity" "entity" {
  name = var.admin_username
  # policies = each.value.policies
  # metadata = each.value.metadata
}

resource "vault_kubernetes_secret_backend" "services" {
  path                      = "kubernetes"
  description               = "Kubernetes Secret Engine Backend"
  kubernetes_host           = var.kubernetes_host
}

resource "vault_kubernetes_secret_backend_role" "crossplane" {
  backend                       = vault_kubernetes_secret_backend.services.path
  name                          = var.service_account_name
  allowed_kubernetes_namespaces = ["*"]
  service_account_name          = var.service_account_name
}
