## Terraform Policy module

This module creates an IAM Policy with the provided policy document.
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| policy\_description | A description of the policy | `string` | `""` | no |
| policy\_document | JSON policy document | `any` | n/a | yes |
| policy\_name | The name of the policy to create | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| policy\_arn | The name of the policy created |
| policy\_name | The name of the policy created |

