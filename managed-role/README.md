## Terraform Managed role module

This module creates an IAM role and attaches the policy to it.. It uses role and policy modules to create the resources. Refer Resources section for more details.

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
| policy\_description | A description of the policy | `string` | `""` | no |
| policy\_document | JSON policy document | `any` | n/a | yes |
| policy\_name | The name of the policy to create | `any` | n/a | yes |
| role\_name | The name of the role | `any` | n/a | yes |
| tags | Additional tags to add to IAM Role Resource. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| policy\_arn | The arn of the policy created |
| policy\_name | The name of the policy created |
| role\_arn | The arn of the role created |
| role\_name | The name of the role created |

