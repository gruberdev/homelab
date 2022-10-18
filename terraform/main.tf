module "unifi" {
  source         = "./modules/unifi"
  site_name      = var.unifi_site_name
  admin_username = var.unifi_username
  admin_password = var.unifi_password
  api_url        = var.unifi_api_url
  controller_sec = var.unifi_insecure
  upstream_dns   = var.unifi_upstream_dns
}

module "vault" {
  source         = "./modules/vault"
  api_url = var.vault_api_url
  root_token = var.vault_token
  admin_username = var.vault_username
  admin_password = var.vault_password

}
