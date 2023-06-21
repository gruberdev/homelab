module "unifi" {
  source              = "./modules/unifi"
  site_name           = var.unifi_site_name
  admin_username      = var.unifi_username
  admin_password      = var.unifi_password
  api_url             = var.unifi_api_url
  controller_sec      = var.unifi_insecure
  upstream_dns        = var.unifi_upstream_dns
  wlan_password       = var.unifi_wlan_pass
  guest_wlan_password = var.unifi_guest_pass
  smart_wlan_password = var.unifi_smart_pass
}

resource "unifi_network" "vlan" {
  name               = "main"
  purpose            = "corporate"
  subnet             = "192.168.1.0/24"
  dhcp_start         = "192.168.1.6"
  dhcp_stop          = "192.168.1.135"
  dhcp_enabled       = true
  dhcp_relay_enabled = false
  network_group      = "LAN"
  site               = module.unifi.site_id
  dhcp_dns           = var.unifi_upstream_dns
}

module "vault" {
  source         = "./modules/vault"
  api_url        = var.vault_api_url
  root_token     = var.vault_token
  admin_username = var.vault_username
  admin_password = var.vault_password
}
