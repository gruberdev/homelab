terraform {
  backend "local" {
  }
  required_version = ">= 1.00"
  required_providers {
    b2 = {
      source  = "Backblaze/b2"
      version = "0.8.8"
    }
  }
}

provider "b2" {
  application_key    = var.app_key
  application_key_id = var.app_key_id
}
