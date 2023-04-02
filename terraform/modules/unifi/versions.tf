terraform {
  required_version = ">= 0.13"
  required_providers {
    unifi = {
      source  = "paultyng/unifi"
      version = "0.41.0"
    }
  }
}

provider "unifi" {
  username       = var.admin_username
  password       = var.admin_password
  api_url        = var.api_url
  allow_insecure = var.controller_sec
  site           = var.site_name
}
