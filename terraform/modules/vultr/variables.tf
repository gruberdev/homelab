variable "vultr_api_token" {
  type        = string
  description = "<sub>(Required) This is the Vultr API key. This can also be specified with the VULTR_API_KEY shell environment variable. [Reference](https://registry.terraform.io/providers/vultr/vultr/latest/docs)</sub>"
  default     = ""
  sensitive   = true
}
