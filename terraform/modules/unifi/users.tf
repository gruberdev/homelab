resource "unifi_user_group" "unlimited" {
  name = "unlimited"

  qos_rate_max_down = -1
  qos_rate_max_up   = -1
  site              = unifi_site.homelab.name

}

resource "unifi_user_group" "guests" {
  name = "guests"

  qos_rate_max_down = 50000 # 50mbps
  qos_rate_max_up   = 10000 # 10mbps
  site              = unifi_site.homelab.name

}

resource "unifi_user" "user" {
  for_each = local.users

  mac             = each.key
  name            = each.value.name
  dev_id_override = each.value.dev_id_override
  fixed_ip        = each.value.fixed_ip
  network_id      = unifi.network.vlan.id
  site            = unifi_site.homelab.name
  note            = trimspace("managed by TF")

  allow_existing         = true
  skip_forget_on_destroy = true
  blocked                = false

  depends_on = [
   unifi_network.wan
  ]
}