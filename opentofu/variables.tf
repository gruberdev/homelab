variable "NODE_NAME" {
  description = "Hostname for the Talos node."
  type        = string
  default     = "taloscp1"
}

variable "BMC_ENDPOINT" {
  description = "Redfish (BMC) IP address or FQDN."
  type        = string
  default     = "https://192.168.1.10/redfish/v1"
}

variable "BMC_USERNAME" {
  description = "Secured Redfish login username."
  type        = string
  sensitive   = true
}

variable "BMC_PASSWORD" {
  description = "Secured Redfish password."
  type        = string
  sensitive   = true
}

variable "NODE_MAC_ADDRESS" {
  description = "MAC address of the network interface used for PXE boot."
  type        = string
  default     = "00:11:22:33:44:55"
}

variable "STATIC_IP" {
  description = "Desired static IP address for the live Talos OS."
  type        = string
  default     = "10.0.50.161/24"
}

variable "INSTALL_DISK" {
  description = "Target disk device on the bare metal node."
  type        = string
  default     = "/dev/sda"
}

variable "CLUSTER_VIP" {
  description = "Virtual IP for the Highly Available Kubernetes API endpoint."
  type        = string
  default     = "10.0.50.160"
}

variable "TALOS_VERSION" {
  description = "Explicit Talos OS version to install."
  type        = string
  default     = "v1.12.0"
}

variable "MATCHBOX_HTTP_ENDPOINT" {
  description = "HTTP URL where Matchbox serves configs (used in kernel args)."
  type        = string
  default     = "http://192.168.100.254:8080"
}

variable "MATCHBOX_RPC_ENDPOINT" {
  description = "gRPC endpoint for OpenTofu control plane."
  type        = string
  default     = "192.168.100.254:8081"
}
