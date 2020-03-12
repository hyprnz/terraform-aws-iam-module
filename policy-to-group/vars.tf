variable "policy_name" {
  description = "The name of the policy to create"
}

variable "policy_sid" {
  description = "An ID for the policy statement. It must be alphanumeric characters only"
}

variable "policy_actions" {
  description = "A List of policy actions"
  type        = list(string)
}

variable "policy_resources" {
  description = "The resources defined in the policy"
  type        = list(string)
  default     = ["*"]
}

variable "group_name" {
  description = "The name of the group to bind the policy to"
}

