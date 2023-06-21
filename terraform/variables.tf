variable "unifi_site_name" {
  type        = string
  description = "<sub>Unifi site name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/site#name)</sub>"
  default     = "default"
}

variable "unifi_username" {
  type        = string
  description = "<sub>Provides a username for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#username).</sub>"
  default     = "example"
  sensitive   = true
  validation {
    condition     = can(regex("^[a-z0-9][-a-z0-9]*[a-z0-9]$", var.unifi_username))
    error_message = "Error: unifi_username value only allows characters a-z, A-Z and 0-9 to be used."
  }
}

variable "unifi_password" {
  type        = string
  description = "<sub>Providers a password for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#password)</sub>"
  default     = ""
  sensitive   = true
}

variable "unifi_api_url" {
  type        = string
  description = "<sub>Provides a connection URI to bridge Terraform with Unifi's controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#api_url)</sub>"
  default     = ""
  sensitive   = true
}

variable "unifi_insecure" {
  type        = string
  description = "<sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub>"
  default     = ""
  sensitive   = true
}

variable "unifi_upstream_dns" {
  type        = list(any)
  description = "<sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub>"
  default     = ["8.8.8.8", "1.1.1.1"]
  sensitive   = true
}

variable "unifi_wlan_pass" {
  type        = string
  description = "<sub>Main WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub>"
  sensitive   = true
}

variable "unifi_guest_pass" {
  type        = string
  description = "<sub>Guest WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub>"
  sensitive   = true
}

variable "unifi_smart_pass" {
  type        = string
  description = "<sub>mart Devices-exclusive WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub>"
  sensitive   = true
}


variable "vault_username" {
  type        = string
  default     = "gruber"
  description = "<sub>Vault plaintext username to login.</sub>"
  validation {
    condition     = can(regex("^[a-z0-9][-a-z0-9]*[a-z0-9]$", var.vault_username))
    error_message = "Error: Your Vault username contains invalid characters."
  }
}

variable "vault_api_url" {
  type        = string
  description = "<sub>Vault API URL Address. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#address)</sub>"
  sensitive   = true
}

variable "vault_token" {
  type        = string
  description = "<sub>Vault root access token. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#token_name)</sub>"
  sensitive   = true
}

variable "vault_password" {
  type        = string
  description = "<sub>Vault password for the main user, used for login purposes.</sub>"
  default     = ""
  sensitive   = true
}
