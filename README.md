# Terraform IAM Module

A module to create a user and set associated properties.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_iam\_access\_key | Whether to create IAM access key | string | `"true"` | no |
| create\_iam\_user\_login\_profile | Whether to create IAM user login profile | string | `"true"` | no |
| create\_user | Whether to create the IAM user | string | `"true"` | no |
| force\_destroy | When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed. | string | `"true"` | no |
| name | Desired name for the IAM user | string | n/a | yes |
| password\_length | The length of the generated password | string | `"15"` | no |
| password\_reset\_required | Whether the user should be forced to reset the generated password on first login. | string | `"true"` | no |
| path | Desired path for the IAM user | string | `"/"` | no |
| permissions\_boundary | The ARN of the policy that is used to set the permissions boundary for the user. | string | `""` | no |
| pgp\_key | Either a base-64 encoded PGP public key, or a keybase username in the form keybase:username. Used to encrypt password and access key. | string | `""` | no |
| ssh\_key\_encoding | Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use SSH. To retrieve the public key in PEM format, use PEM | string | `"SSH"` | no |
| ssh\_public\_key | The SSH public key. The public key must be encoded in ssh-rsa format or PEM format | string | `""` | no |
| upload\_iam\_user\_ssh\_key | Whether to upload a public ssh key to the IAM user | string | `"false"` | no |
| user\_groups | List of associated groups for the user is a member of | list | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| keybase\_password\_decrypt\_command |  |
| keybase\_password\_pgp\_message |  |
| keybase\_secret\_key\_decrypt\_command |  |
| keybase\_secret\_key\_pgp\_message |  |
| pgp\_key | PGP key used to encrypt sensitive data for this user (if empty - secrets are not encrypted) |
| this\_iam\_access\_key\_encrypted\_secret | The encrypted secret, base64 encoded |
| this\_iam\_access\_key\_id | The access key ID |
| this\_iam\_access\_key\_key\_fingerprint | The fingerprint of the PGP key used to encrypt the secret |
| this\_iam\_access\_key\_secret | The access key secret |
| this\_iam\_access\_key\_ses\_smtp\_password | The secret access key converted into an SES SMTP password |
| this\_iam\_access\_key\_status | Active or Inactive. Keys are initially active, but can be made inactive by other means. |
| this\_iam\_user\_arn | The ARN assigned by AWS for this user |
| this\_iam\_user\_login\_profile\_encrypted\_password | The encrypted password, base64 encoded |
| this\_iam\_user\_login\_profile\_key\_fingerprint | The fingerprint of the PGP key used to encrypt the password |
| this\_iam\_user\_name | The user's name |
| this\_iam\_user\_ssh\_key\_fingerprint | The MD5 message digest of the SSH public key |
| this\_iam\_user\_ssh\_key\_ssh\_public\_key\_id | The unique identifier for the SSH public key |
| this\_iam\_user\_unique\_id | The unique ID assigned by AWS |

