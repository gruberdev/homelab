# Terraform

### Providers

> - hashicorp/vault
> - paultyng/unifi

---

<details>
  <summary>
   <b>Variable and resources documentation</b>
  </summary>

---
<!-- BEGIN_TF_DOCS -->
### Modules

| Name | Source | Version |
|------|--------|---------|
| unifi | ./modules/unifi | n/a |
| vault | ./modules/vault | n/a |

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| unifi\_api\_url | <sub>Provides a connection URI to bridge Terraform with Unifi's controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#api_url)</sub> | `string` | `""` |
| unifi\_guest\_pass | <sub>Guest WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub> | `string` | n/a |
| unifi\_insecure | <sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `string` | `""` |
| unifi\_password | <sub>Providers a password for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#password)</sub> | `string` | `""` |
| unifi\_site\_name | <sub>Unifi site name. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/site#name)</sub> | `string` | `"default"` |
| unifi\_smart\_pass | <sub>mart Devices-exclusive WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub> | `string` | n/a |
| unifi\_upstream\_dns | <sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `list(any)` | <pre>[<br>  "8.8.8.8",<br>  "1.1.1.1"<br>]</pre> |
| unifi\_username | <sub>Provides a username for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#username).</sub> | `string` | `"example"` |
| unifi\_wlan\_pass | <sub>Main WLAN password. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/resources/wlan#security)</sub> | `string` | n/a |
| vault\_api\_url | <sub>Vault API URL Address. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#address)</sub> | `string` | n/a |
| vault\_password | <sub>Vault password for the main user, used for login purposes.</sub> | `string` | `""` |
| vault\_token | <sub>Vault root access token. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#token_name)</sub> | `string` | n/a |
| vault\_username | <sub>Vault plaintext username to login.</sub> | `string` | `"gruber"` |

### Outputs

No outputs.
<!-- END_TF_DOCS -->
</details>
