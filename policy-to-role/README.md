## Terraform Policy to Role Module

__This module is now deprectaed and will be removed in future versions of the module. Please use the [managed policy module](../managed-policy/README.md)__



This module creates a IAM policy and  attaches the policy to an existing Role.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| policy\_actions | A List of policy actions | list | n/a | yes |
| policy\_name | The name of the policy to create | string | n/a | yes |
| policy\_sid | An ID for the policy statement. It must be alphanumeric characters only | string | n/a | yes |
| role\_name | The name of the role to attach the policy to | string | n/a | yes |
| policy\_resources | The resources defined in the policy | list | `<list>` | no |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| policy\_actions | A List of policy actions | list | n/a | yes |
| policy\_name | The name of the policy to create | string | n/a | yes |
| policy\_sid | An ID for the policy statement. It must be alphanumeric characters only | string | n/a | yes |
| role\_name | The name of the role to attach the policy to | string | n/a | yes |
| policy\_resources | The resources defined in the policy | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| policy\_name | The name of the policy created |

