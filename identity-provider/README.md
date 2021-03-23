# Terraform Identity Provider modules

A module to create an identity Provider IAM resource for open id connect provider.

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
| client\_id\_list | A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the client\_id parameter on OAuth requests.) | `list(string)` | n/a | yes |
| identity\_provider\_url | The URL of the identity provider. | `any` | n/a | yes |
| thumbprint\_list | A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| provider\_arn | The ARN assigned by AWS for this provider. |

