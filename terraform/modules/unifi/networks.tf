resource "unifi_network" "vlan" {
  name    = "main"
  purpose = "corporate"

  subnet             = "192.168.1.1/24"
  dhcp_start         = "192.168.1.6"
  dhcp_stop          = "192.168.1.254"
  dhcp_enabled       = true
  dhcp_relay_enabled = false
  network_group      = "LAN"
  site               = unifi_site.homelab.name
  dhcp_dns           = var.upstream_dns
}

resource "unifi_network" "wan" {
  name    = "simDigital"
  purpose = "wan"

  wan_networkgroup = "WAN"
  wan_type         = "dhcp"
  wan_ip           = "192.168.1.1"
  site             = unifi_site.homelab.name
  wan_dns          = var.upstream_dns
}