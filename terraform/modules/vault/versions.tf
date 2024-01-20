terraform {
  backend "local" {
  }
  required_version = ">= 0.13"
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.24.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.25.2"
    }
  }
}

provider "vault" {
  address = var.api_url
  token   = var.root_token
}

provider "kubernetes" {
  config_path    = var.kube_config
  config_context = var.kube_context
}
