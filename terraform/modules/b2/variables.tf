variable "app_key" {
  type        = string
  description = "<sub>(Required) B2 Application Key. [Reference](https://registry.terraform.io/providers/Backblaze/b2/latest/docs#optional)</sub>"
  default     = ""
  sensitive   = true
}

variable "app_key_id" {
  type        = string
  description = "<sub>(Required) B2 Application Key ID. [Reference](https://registry.terraform.io/providers/Backblaze/b2/latest/docs#optional)</sub>"
  default     = ""
  sensitive   = true
}

variable "bucket_type" {
  type        = string
  description = "<sub>The bucket type. Either 'allPublic', meaning that files in this bucket can be downloaded by anybody, or 'allPrivate'. [Reference](https://registry.terraform.io/providers/Backblaze/b2/latest/docs/resources/bucket#required)</sub>"
  default     = "allPrivate"
  validation {
    condition     = can(index(["allPublic", "allPrivate"], var.bucket_type))
    error_message = "Error: Not a valid bucket type."
  }
}

variable "bucket_name" {
  type        = string
  default     = "homelab-gruber"
  description = "<sub>A name for your S3 Bucket being created.</sub>"
  validation {
    condition     = can(regex("^[a-z0-9][-a-z0-9]*[a-z0-9]$", var.bucket_name))
    error_message = "Error: Invalid bucket name."
  }
}
