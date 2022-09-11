terraform {
  required_version = ">= 0.13"
  required_providers {
    unifi = {
      source  = "paultyng/unifi"
      version = "0.34.1"
    }
  }
}

provider "unifi" {
  username = var.controller_username
  password = var.controller_password
  api_url  = var.controller_api_url
  allow_insecure = var.controller_insecure
  site = var.controller_site_name
}
