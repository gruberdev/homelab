terraform {
  required_version = ">= 0.13"
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.9.1"
    }
    unifi = {
      source  = "paultyng/unifi"
      version = "0.38.1"
    }
  }
}

provider "vault" {
}

provider "unifi" {
  username = var.unifi_username
  password = var.unifi_password
  api_url  = var.unifi_api_url
  allow_insecure = var.unifi_insecure
  site = var.unifi_site_name
}
