# locals {
#   userscsv = csvdecode(file("${path.module}/users.csv"))
#   users    = { for user in local.userscsv : user.mac => user }
# }

resource "unifi_site" "homelab" {
  description = "Main site"
}
