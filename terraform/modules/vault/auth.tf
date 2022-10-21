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
