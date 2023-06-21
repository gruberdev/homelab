locals {
  userscsv = csvdecode(file("${path.module}/users.csv"))
  users    = { for user in local.userscsv : user.mac => user }
}

resource "unifi_user_group" "unlimited" {
  name = "unlimited"

  qos_rate_max_down = -1
  qos_rate_max_up   = -1
  site              = unifi_site.default.name
}

resource "unifi_user_group" "smart" {
  name = "smart"

  qos_rate_max_down = 10000 # 10mbps
  qos_rate_max_up   = 1000  # 1mbps
  site              = unifi_site.default.name
}

resource "unifi_user_group" "guests" {
  name = "guests"

  qos_rate_max_down = 50000 # 50mbps
  qos_rate_max_up   = 10000 # 10mbps
  site              = unifi_site.default.name
}

resource "unifi_user" "user" {
  for_each = local.users

  mac             = each.key
  name            = each.value.name
  dev_id_override = each.value.device
  fixed_ip        = each.value.ip
  user_group_id   = each.value.group
  network_id      = unifi_network.main.id
  site            = unifi_site.default.name
  note            = trimspace("managed by Terraform")

  allow_existing         = true
  skip_forget_on_destroy = true
  blocked                = false

  depends_on = [
    unifi_user_group.guests,
    unifi_user_group.smart,
    unifi_user_group.unlimited
  ]
}
