
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
| controller\_sec | <sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `string` | `""` |
| site\_name | <sub>Defines [a name for your controller](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/site#name) site name.</sub> | `string` | `"main"` |
| upstream\_dns | <sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `list` | <pre>[<br>  "8.8.8.8",<br>  "1.1.1.1"<br>]</pre> |

### Outputs

No outputs.
<!-- END_TF_DOCS -->
</details>