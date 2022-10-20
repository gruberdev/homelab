
# kv secret engine
resource "vault_mount" "kv" {
  path        = "kv"
  type        = "kv-v2"
  description = "kv backend"
}

resource "vault_generic_secret" "secrets" {
  depends_on = [vault_mount.kv]
  for_each   = fileset("${path.module}/secrets/", "**")
  path       = "kv/${dirname(each.key)}"
  data_json  = file("${path.module}/secrets/${each.key}")
}
