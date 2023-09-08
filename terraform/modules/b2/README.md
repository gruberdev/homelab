
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
| app\_key | <sub>(Required) B2 Application Key. [Reference](https://registry.terraform.io/providers/Backblaze/b2/latest/docs#optional)</sub> | `string` | `""` |
| app\_key\_id | <sub>(Required) B2 Application Key ID. [Reference](https://registry.terraform.io/providers/Backblaze/b2/latest/docs#optional)</sub> | `string` | `""` |
| bucket\_name | <sub>A name for your S3 Bucket being created.</sub> | `string` | `"homelab-gruber"` |
| bucket\_type | <sub>The bucket type. Either 'allPublic', meaning that files in this bucket can be downloaded by anybody, or 'allPrivate'. [Reference](https://registry.terraform.io/providers/Backblaze/b2/latest/docs/resources/bucket#required)</sub> | `string` | `"allPrivate"` |

### Outputs

| Name | Description |
|------|-------------|
| bucket\_example | n/a |
<!-- END_TF_DOCS -->
</details>
