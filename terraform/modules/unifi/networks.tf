resource "unifi_network" "main" {
  name                    = "main"
  site                    = "default"
  purpose                 = "corporate"
  subnet                  = "192.168.1.0/24"
  dhcp_start              = "192.168.1.2"
  dhcp_stop               = "192.168.1.135"
  dhcp_enabled            = true
  dhcp_relay_enabled      = false
  network_group           = "LAN"
  dhcp_dns                = var.upstream_dns
  ipv6_interface_type     = var.ipv6_interface
  dhcp_v6_enabled         = var.ipv6_enabled
  ipv6_static_subnet      = var.ipv6_subnet
  dhcp_v6_start           = var.ipv6_start
  dhcp_v6_stop            = var.ipv6_stop
  dhcp_v6_dns             = var.ipv6_dns
  ipv6_ra_enable          = var.ipv6_ra
  internet_access_enabled = var.internal_outgoing
}
