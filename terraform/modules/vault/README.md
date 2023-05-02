
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
| admin\_password | <sub>Vault password for the main user, used for login purposes.</sub> | `string` | `"replaceMe"` |
| admin\_username | <sub>Vault plaintext username to login.</sub> | `string` | `"gruber"` |
| api\_url | <sub>Vault API URL Address. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#address)</sub> | `string` | `"http://localhost:8200/"` |
| endpoint\_path | <sub>Vault password for the main user, used for login purposes.</sub> | `string` | `""` |
| kube\_config | <sub>A path to a kube config file. Can be sourced from `KUBE_CONFIG_PATH`. [Reference](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs#config_path) </sub> | `string` | `"~/.kube/config"` |
| kube\_context | <sub>Context to choose from the config file. Can be sourced from `KUBE_CTX`. [Reference](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs#config_context) </sub> | `string` | `"default"` |
| kubernetes\_host | <sub>Kubernetes API URL to connect to when integrating Vault and Crossplane. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kubernetes_secret_backend#kubernetes_host) </sub> | `string` | `"https://192.168.1.10:6443"` |
| root\_token | <sub>Vault root access token. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs#token_name)</sub> | `string` | n/a |
| service\_account\_name | <sub>The pre-existing service account to generate tokens for Vault agent backend. Mutually exclusive with `kubernetes_role_name` and `generated_role_rules`. If set, only a Kubernetes token will be created when credentials are requested. [Reference](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kubernetes_secret_backend_role#service_account_name).</sub> | `string` | `"vault-auth"` |

### Outputs

No outputs.
<!-- END_TF_DOCS -->
</details>
