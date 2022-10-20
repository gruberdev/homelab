# Policies document
data "vault_policy_document" "admin_access" {
  rule {
    path         = "secret/*"
    capabilities = ["create", "read", "update", "delete", "list"]
    description  = "allow all on secrets"
  }
}

data "vault_policy_document" "audit_access" {
  rule {
    path         = "secret/*"
    capabilities = [ "read",  "list"]
    description  = "allow read and list"
  }
}

resource "vault_policy" "admin_policy" {
  name   = "admin_policy"
  policy = file("${path.module}/policies/admin.hcl")
}

resource "vault_policy" "audit" {
  name   = "audit_policy"
  policy = "${data.vault_policy_document.audit_access.hcl}"
}
