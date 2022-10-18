

variable "admin_username" {
  type        = string
  default     = "gruber"
  description = "<sub>Vault plaintext username to login.</sub>"
  validation {
    condition     = can(regex("^[a-z0-9][-a-z0-9]*[a-z0-9]$", var.admin_username))
    error_message = "Error: Your Vault username contains invalid characters."
  }
}

variable "admin_password" {
  type        = string
  description = "<sub>Vault password for the main user, used for login purposes.</sub>"
  default     = "replaceMe"
  sensitive   = true
}

variable "api_url" {
  type        = string
  description = "<sub>Vault password for the main user, used for login purposes.</sub>"
  default     = "http://localhost:8200/"
  sensitive   = true
}

variable "root_token" {
  type        = string
  description = "<sub>Vault password for the main user, used for login purposes.</sub>"
  sensitive   = true
}

variable "endpoint_path" {
  type        = string
  description = "<sub>Vault password for the main user, used for login purposes.</sub>"
  default     = ""
}
