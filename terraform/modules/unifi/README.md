
<details>
  <summary>
   <b>Module documentation</b>
  </summary>

---
<!-- BEGIN_TF_DOCS -->
### Modules

No modules.

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| admin\_password | <sub>Providers a password for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#password)</sub> | `string` | `""` |
| admin\_username | <sub>Provides a username for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#username).</sub> | `string` | `"example"` |
| api\_url | <sub>Provides a connection URI to bridge Terraform with Unifi's controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#api_url)</sub> | `string` | `""` |
| controller\_sec | <sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `bool` | `true` |
| guest\_wlan\_password | <sub>Guest WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub> | `string` | n/a |
| guest\_wlan\_ssid | <sub>Guest wireless network SSID name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#name)</sub> | `string` | `"無線 | Guests"` |
| internal\_outgoing | <sub>Specifies whether this network should be allowed to access the internet or not. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#internet_access_enabled)</sub> | `bool` | `true` |
| ipv6\_dns | <sub>Specifies the IPv6 addresses for the DNS server to be returned from the DHCP server. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#dhcp_v6_dns)</sub> | `list(any)` | <pre>[<br>  "2001:4860:4860::8888",<br>  "2001:4860:4860::8844"<br>]</pre> |
| ipv6\_enabled | <sub>Enable stateful DHCPv6 for static configuration. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#dhcp_v6_enabled)</sub> | `bool` | `true` |
| ipv6\_interface | <sub>Specifies which type of IPv6 connection to use. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#ipv6_interface_type)</sub> | `string` | `"static"` |
| ipv6\_ra | <sub>Specifies whether to enable router advertisements or not. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#ipv6_ra_enable)</sub> | `bool` | `true` |
| ipv6\_start | <sub>Start address of the DHCPv6 range. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#dhcp_v6_start)</sub> | `string` | `"fd12:3456:789a:0001:0000:0000:0000:0000"` |
| ipv6\_stop | <sub>End address of the DHCPv6 range. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#dhcp_v6_stop)</sub> | `string` | `"fd12:3456:789a:0001:ffff:ffff:ffff:ffff"` |
| ipv6\_subnet | <sub>Specifies the static IPv6 subnet. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/network#ipv6_static_subnet)</sub> | `string` | `"fd12:3456:789a:1::/64"` |
| site\_name | <sub>Defines [a name for your controller](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/site#name) site name.</sub> | `string` | `"default"` |
| smart\_wlan\_password | <sub>Smart Devices-exclusive WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub> | `string` | n/a |
| smart\_wlan\_ssid | <sub>Smart Devices-exclusive wireless network SSID name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#name)</sub> | `string` | `"SmartLAN"` |
| upstream\_dns | <sub>Upstream DNS servers, used to configure default networking configuration parameters. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `list(any)` | <pre>[<br>  "8.8.8.8",<br>  "1.1.1.1"<br>]</pre> |
| wlan\_password | <sub>Main WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub> | `string` | n/a |
| wlan\_ssid | <sub>Main wireless network SSID name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#name)</sub> | `string` | `"無線 | Main"` |

### Outputs

| Name | Description |
|------|-------------|
| site\_id | n/a |
<!-- END_TF_DOCS -->
</details>
