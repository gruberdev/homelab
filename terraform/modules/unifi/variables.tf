variable "site_name" {
  type        = string
  default     = "default"
  description = "<sub>Defines [a name for your controller](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/site#name) site name.</sub>"
  validation {
    condition     = can(regex("^[a-z0-9][-a-z0-9]*[a-z0-9]$", var.site_name))
    error_message = "Error: Your Unifi site name contains invalid characters."
  }
}

variable "admin_username" {
  type        = string
  description = "<sub>Provides a username for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#username).</sub>"
  default     = "example"
  sensitive   = true
  validation {
    condition     = can(regex("^[a-z0-9][-a-z0-9]*[a-z0-9]$", var.admin_username))
    error_message = "Error: unifi_username value only allows characters a-z, A-Z and 0-9 to be used."
  }
}

variable "admin_password" {
  type        = string
  description = "<sub>Providers a password for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#password)</sub>"
  default     = ""
  sensitive   = true
}

variable "api_url" {
  type        = string
  description = "<sub>Provides a connection URI to bridge Terraform with Unifi's controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#api_url)</sub>"
  default     = ""
  sensitive   = true
}

variable "controller_sec" {
  type        = bool
  description = "<sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub>"
  default     = true
}

variable "upstream_dns" {
  type        = list(any)
  description = "<sub>Upstream DNS servers, used to configure default networking configuration parameters. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub>"
  default     = ["8.8.8.8", "1.1.1.1"]
}

variable "wlan_ssid" {
  type        = string
  description = "<sub>Main wireless network SSID name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#name)</sub>"
  default     = "無線 | Main"
}

variable "wlan_password" {
  type        = string
  description = "<sub>Main WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub>"
  sensitive   = true
}

variable "guest_wlan_ssid" {
  type        = string
  description = "<sub>Guest wireless network SSID name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#name)</sub>"
  default     = "無線 | Guests"
}

variable "guest_wlan_password" {
  type        = string
  description = "<sub>Guest WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub>"
  sensitive   = true
}

variable "smart_wlan_ssid" {
  type        = string
  description = "<sub>Smart Devices-exclusive wireless network SSID name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#name)</sub>"
  default     = "SmartLAN"
}

variable "smart_wlan_password" {
  type        = string
  description = "<sub>Smart Devices-exclusive WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub>"
  sensitive   = true
}

variable "ipv6_enabled" {
  type        = bool
  default     = true
  description = "<sub>Enable stateful DHCPv6 for static configuration. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#dhcp_v6_enabled)</sub>"
}

variable "ipv6_subnet" {
  type        = string
  default     = "fd12:3456:789a:1::/64"
  description = "<sub>Specifies the static IPv6 subnet. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#ipv6_static_subnet)</sub>"
}

variable "ipv6_interface" {
  type        = string
  default     = "static"
  description = "<sub>Specifies which type of IPv6 connection to use. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#ipv6_interface_type)</sub>"
}

variable "ipv6_start" {
  type        = string
  default     = "fd12:3456:789a:0001:0000:0000:0000:0000"
  description = "<sub>Start address of the DHCPv6 range. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#dhcp_v6_start)</sub>"
}

variable "ipv6_stop" {
  type        = string
  default     = "fd12:3456:789a:0001:ffff:ffff:ffff:ffff"
  description = "<sub>End address of the DHCPv6 range. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#dhcp_v6_stop)</sub>"
}

variable "ipv6_dns" {
  type        = list(any)
  default     = ["2001:4860:4860::8888", "2001:4860:4860::8844"]
  description = "<sub>Specifies the IPv6 addresses for the DNS server to be returned from the DHCP server. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#dhcp_v6_dns)</sub>"
}

variable "internal_outgoing" {
  type        = bool
  default     = true
  description = "<sub>Specifies whether this network should be allowed to access the internet or not. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#internet_access_enabled)</sub>"
}

variable "ipv6_ra" {
  type        = bool
  default     = true
  description = "<sub>Specifies whether to enable router advertisements or not. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#ipv6_ra_enable)</sub>"
}
