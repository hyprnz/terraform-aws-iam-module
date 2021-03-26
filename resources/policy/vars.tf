variable "policy_name" {
  description = "The name of the policy to create"
}

variable "policy_description" {
  description = "A description of the policy"
  default     = ""
}

variable "policy_document" {
  description = "JSON policy document"
}

