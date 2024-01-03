terraform {
  backend "local" {
  }
  required_version = ">= 1.00"
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.19.0"
    }
  }
}

provider "vultr" {
  api_key     = var.vultr_api_token
  rate_limit  = 100
  retry_limit = 3
}
