## Terraform Policy to Group Module

This module ill create a IAM policy and group and bind the policy to the group.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_group | Whether to create the IAM group or not | bool | true | yes |
| group\_name | The name of the group to bind the policy to | string | n/a | yes |
| policy\_actions | A List of policy actions | list | n/a | yes |
| policy\_name | The name of the policy to create | string | n/a | yes |
| policy\_sid | An ID for the policy statement. It must be alphanumeric characters only | string | n/a | yes |
| policy\_resources | The resources defined in the policy | list | `<list>` | no |

