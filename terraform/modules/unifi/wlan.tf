data "unifi_ap_group" "default" {
  site = unifi_site.default.name
  name = "default"
}

resource "unifi_wlan" "main_wifi" {
  name       = var.wlan_ssid
  passphrase = var.wlan_password
  security   = "wpapsk"

  wpa3_support    = true
  wpa3_transition = false
  no2ghz_oui      = true
  pmf_mode        = "required"

  network_id    = unifi_network.main.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = unifi_user_group.unlimited.id
  site          = unifi_site.default.name
}

resource "unifi_wlan" "guest_wifi" {
  name       = var.guest_wlan_ssid
  passphrase = var.guest_wlan_password
  security   = "wpapsk"

  wpa3_support    = true
  wpa3_transition = true
  wlan_band       = "both"
  l2_isolation    = true
  pmf_mode        = "optional"

  network_id    = unifi_network.main.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = unifi_user_group.guests.id
  site          = unifi_site.default.name
}

resource "unifi_wlan" "smartDevices" {
  name       = var.smart_wlan_ssid
  passphrase = var.smart_wlan_password
  security   = "wpapsk"

  wpa3_support    = false
  pmf_mode        = "disabled"
  no2ghz_oui      = false
  wlan_band       = "2g"

  network_id    = unifi_network.main.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = unifi_user_group.smart.id
  site          = unifi_site.default.name
}
