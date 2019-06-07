variable "create_user" {
  description = "Whether to create the IAM user"
  default     = true
}

variable "create_iam_user_login_profile" {
  description = "Whether to create IAM user login profile"
  default     = true
}

variable "create_iam_access_key" {
  description = "Whether to create IAM access key"
  default     = true
}

variable "name" {
  description = "Desired name for the IAM user"
}

variable "path" {
  description = "Desired path for the IAM user"
  default     = "/"
}

variable "force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  default     = true
}

variable "pgp_key" {
  description = "Either a base-64 encoded PGP public key, or a keybase username in the form keybase:username. Used to encrypt password and access key."
  default     = ""
}

variable "password_reset_required" {
  description = "Whether the user should be forced to reset the generated password on first login."
  default     = true
}

variable "password_length" {
  description = "The length of the generated password"
  default     = 15
}

variable "upload_iam_user_ssh_key" {
  description = "Whether to upload a public ssh key to the IAM user"
  default     = false
}

variable "ssh_key_encoding" {
  description = "Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use SSH. To retrieve the public key in PEM format, use PEM"
  default     = "SSH"
}

variable "ssh_public_key" {
  description = "The SSH public key. The public key must be encoded in ssh-rsa format or PEM format"
  default     = ""
}

variable "permissions_boundary" {
  description = "The ARN of the policy that is used to set the permissions boundary for the user."
  default     = ""
}

variable "aws_region" {
  description = "The AWS region for the resource used in the provider section"
}

variable "aws_profile" {
  description = "defines profile for AWS credentials"
}

variable "terraform_state_bucket" {
}

variable "terraform_state_bucket_region" {
}

