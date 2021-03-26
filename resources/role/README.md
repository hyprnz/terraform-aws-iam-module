## Terraform Role module

This module creates an IAM Role and attaches the provided assume role policy to the role.
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
| assume\_role\_policy\_document | Json policy document | `any` | n/a | yes |
| role\_name | The name of the role | `any` | n/a | yes |
| tags | Additional tags to add to IAM Role Resource. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| role\_arn | The arn of the policy created |
| role\_name | The arn of the policy created |

