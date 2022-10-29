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
| unifi | ./unifi | n/a |

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| unifi\_api\_url | <sub>Provides a connection URI to bridge Terraform with Unifi's controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#api_url)</sub> | `string` | `""` |
| unifi\_insecure | <sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `string` | `""` |
| unifi\_password | <sub>Providers a password for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#password)</sub> | `string` | `""` |
| unifi\_site\_name | n/a | `string` | `"main"` |
| unifi\_upstream\_dns | <sub>Skip TLS verification when trying to access the API. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#allow_insecure)</sub> | `list` | <pre>[<br>  "8.8.8.8",<br>  "1.1.1.1"<br>]</pre> |
| unifi\_username | <sub>Provides a username for your Unifi controller. [Reference](https://registry.terraform.io/providers/paultyng/unifi/latest/docs#username).</sub> | `string` | `"example"` |
| vault\_github\_org | <sub>[Provide a Github organization name to authorize users inside Vault.](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/github_auth_backend#organization)</sub> | `string` | `"takeru-org"` |
| vault\_password | <sub>Vault password for the main user, used for login purposes.</sub> | `string` | `""` |
| vault\_path | <sub>Vault password for the main user, used for login purposes.</sub> | `string` | `""` |
| vault\_userdata | <sub>Mock variable required by Vault userpass login method.</sub> | `any` | n/a |
| vault\_username | <sub>Vault plaintext username to login.</sub> | `string` | `"gruber"` |

### Outputs

No outputs.
<!-- END_TF_DOCS -->
</details>