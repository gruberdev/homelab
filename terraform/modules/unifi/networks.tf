resource "unifi_network" "main" {
  name               = "main"
  purpose            = "corporate"
  subnet             = "192.168.1.0/24"
  dhcp_start         = "192.168.1.2"
  dhcp_stop          = "192.168.1.200"
  dhcp_enabled       = true
  dhcp_relay_enabled = false
  network_group      = "LAN"
  dhcp_dns           = var.upstream_dns
}
