terraform {
  required_version = ">= 0.13"
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.22.0"
    }
    unifi = {
      source  = "paultyng/unifi"
      version = "0.41.0"
    }
  }
  # backend "pg" {
  # }
}

provider "vault" {
  address = var.vault_api_url
  token   = var.vault_token
}

provider "unifi" {
  username       = var.unifi_username
  password       = var.unifi_password
  api_url        = var.unifi_api_url
  allow_insecure = var.unifi_insecure
  site           = "default"
}
