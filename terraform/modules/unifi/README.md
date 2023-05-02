
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
| site\_name | <sub>Defines [a name for your controller](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/site#name) site name.</sub> | `string` | `"main"` |
| smart\_wlan\_password | <sub>Smart Devices-exclusive WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub> | `string` | n/a |
| smart\_wlan\_ssid | <sub>Smart Devices-exclusive wireless network SSID name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#name)</sub> | `string` | `"SmartLAN"` |
| upstream\_dns | <sub>Upstream DNS servers, used to configure default networking configuration parameters. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `list` | <pre>[<br>  "8.8.8.8",<br>  "1.1.1.1"<br>]</pre> |
| wlan\_password | <sub>Main WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub> | `string` | n/a |
| wlan\_ssid | <sub>Main wireless network SSID name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#name)</sub> | `string` | `"無線 | Main"` |

### Outputs

| Name | Description |
|------|-------------|
| site\_id | n/a |
<!-- END_TF_DOCS -->
</details>
