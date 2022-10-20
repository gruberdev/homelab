
resource "vault_generic_endpoint" "admin_userpass" {
  depends_on           = [vault_auth_backend.userpass]
  path                 = "auth/userpass/users/${var.admin_username}"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": ["admin_policy", "audit_policy"],
  "password": "${var.admin_password}"
}
EOT
}
