## Terraform Group To Policy Module

This module creates a IAM policy and IAM Role and attaches the policy to the role.

---

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.19 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| policy\_actions | A List of policy actions. | `list(string)` | n/a | yes |
| policy\_name | The name of the policy to create | `any` | n/a | yes |
| policy\_sid | An ID for the policy statement. It must be alphanumeric characters only. | `any` | n/a | yes |
| role\_name | The name of the role to create and attach policy to. | `any` | n/a | yes |
| policy\_description | A description of the policy. | `string` | `""` | no |
| policy\_resources | The resources defined in the policy. | `list(string)` | <pre>[<br>  "*"<br>]<br></pre> | no |
| role\_principal\_identifiers | The service or role identifier that is able to assume the role. The identifier should match the `role_prinicpal_type`. | `list(string)` | <pre>[<br>  "ec2.amazonaws.com"<br>]<br></pre> | no |
| role\_principal\_type | The principal type - Either `Service` for a service category or `AWS` for a role arn. The `role_principal_indentfier` must be a valid | `string` | `"Service"` | no |
| tags | Additional tags to add to IAM Role Resource. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| policy\_arn | The arn of the policy created |
| role\_arn | The arn of the policy created |

