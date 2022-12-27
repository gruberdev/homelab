

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
  description = "<sub>Vault API URL Address. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#address)</sub>"
  default     = "http://localhost:8200/"
  sensitive   = true
}

variable "root_token" {
  type        = string
  description = "<sub>Vault root access token. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#token_name)</sub>"
  sensitive   = true
}

variable "endpoint_path" {
  type        = string
  description = "<sub>Vault password for the main user, used for login purposes.</sub>"
  default     = ""
}

variable "kubernetes_host" {
  type        = string
  description = "<sub>Kubernetes API URL to connect to when integrating Vault and Crossplane. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kubernetes_secret_backend#kubernetes_host) </sub>"
  default     = "https://192.168.1.10:6443"
}

variable "service_account_name" {
  type        = string
  description = "<sub>The pre-existing service account to generate tokens for Vault agent backend. Mutually exclusive with `kubernetes_role_name` and `generated_role_rules`. If set, only a Kubernetes token will be created when credentials are requested. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kubernetes_secret_backend_role#service_account_name).</sub>"
  default     = "vault-auth"
}

variable "kube_config" {
  type        = string
  description = "<sub>A path to a kube config file. Can be sourced from `KUBE_CONFIG_PATH`. [Reference](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs#config_path) </sub>"
  default     = "~/.kube/config"
}

variable "kube_context" {
  type        = string
  description = "<sub>Context to choose from the config file. Can be sourced from `KUBE_CTX`. [Reference](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs#config_context) </sub>"
  default     = "default"
}
