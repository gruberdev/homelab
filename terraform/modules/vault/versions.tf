terraform {
  required_version = ">= 0.13"
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.10.0"
    }
  }
}

provider "vault" {
  address = var.api_url
  token   = var.root_token
}
