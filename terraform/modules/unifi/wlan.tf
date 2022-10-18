data "unifi_ap_group" "default" {
}

# resource "unifi_wlan" "main_wifi" {
#   name       = "myssid"
#   passphrase = "12345678"
#   security   = "wpapsk"

#   # enable WPA2/WPA3 support
#   wpa3_support    = true
#   wpa3_transition = true
#   pmf_mode        = "optional"

#   network_id    = unifi_network.vlan.id
#   ap_group_ids  = [data.unifi_ap_group.default.id]
#   user_group_id = data.unifi_user_group.unlimited.id
#   site          = unifi_site.homelab.name
# }

# resource "unifi_wlan" "guest_wifi" {
#   name       = "myssid"
#   passphrase = "12345678"
#   security   = "wpapsk"

#   # enable WPA2/WPA3 support
#   wpa3_support    = true
#   wpa3_transition = true
#   pmf_mode        = "optional"

#   network_id    = unifi_network.vlan.id
#   ap_group_ids  = [data.unifi_ap_group.default.id]
#   user_group_id = data.unifi_user_group.guests.id
#   site          = unifi_site.homelab.name
# }