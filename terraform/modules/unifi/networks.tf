resource "unifi_network" "wan" {
  name    = "simDigital"
  purpose = "wan"

  wan_networkgroup = "WAN"
  wan_type         = "dhcp"
  site             = unifi_site.homelab.name
  wan_dns          = var.upstream_dns
}
