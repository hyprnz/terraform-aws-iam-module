variable "policy_name" {
  description = "The name of the policy to create"
}

variable "policy_description" {
  description = "A description of the policy."
  default     = ""
}

variable "policy_sid" {
  description = "An ID for the policy statement. It must be alphanumeric characters only."
}

variable "policy_actions" {
  description = "A List of policy actions."
  type        = list(string)
}

variable "policy_resources" {
  description = "The resources defined in the policy."
  type        = list(string)
  default     = ["*"]
}

variable "role_name" {
  description = "The name of the role to create and attach policy to."
}

variable "role_principal_type" {
  description = "The principal type - Either `Service` for a service category or `AWS` for a role arn. The `role_principal_indentfier` must be a valid"
  default     = "Service"
}

variable "role_principal_identifiers" {
  description = "The service or role identifier that is able to assume the role. The identifier should match the `role_prinicpal_type`."
  type        = list(string)
  default     = ["ec2.amazonaws.com"]
}

variable "tags" {
  description = "Additional tags to add to IAM Role Resource."
  type        = map(any)
  default     = {}
}