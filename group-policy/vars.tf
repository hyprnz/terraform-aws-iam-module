variable "policy_name" {
  description = "The name of the policy to create"
}

variable "policy_sid" {
  description = "The sid of the policy"
}

variable "policy_actions" {
  description = "A List of policy actions"
  type        = "list"
}

variable "policy_resources" {
  description = "The resources defined in the policy"
  type        = "list"
  default     = ["*"]
}

variable "group_name" {
  description = "The name of the group to bind the policy to"
}
