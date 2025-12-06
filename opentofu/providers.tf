terraform {
  required_providers {
    redfish = {
      source  = "dell/redfish"
      version = "1.0.0" # Verify latest version or use appropriate constraint
    }
    matchbox = {
      source  = "poseidon/matchbox"
      version = "0.5.2" # Verify latest version or use appropriate constraint
    }
    talos = {
      source  = "siderolabs/talos"
      version = "0.7.0" # Verify latest version or use appropriate constraint
    }
  }
}

provider "redfish" {
  endpoint = var.BMC_ENDPOINT
  username = var.BMC_USERNAME
  password = var.BMC_PASSWORD
}

provider "matchbox" {
  endpoint    = var.MATCHBOX_RPC_ENDPOINT
  client_cert = file("client.crt") # Assumes these exist or are handled externally
  client_key  = file("client.key") # Assumes these exist or are handled externally
  ca          = file("ca.crt")     # Assumes these exist or are handled externally
}

provider "talos" {
  # Configuration is often handled within resources or via environment variables/config files
  # for the initial bootstrap, but we can specify defaults if needed.
}
