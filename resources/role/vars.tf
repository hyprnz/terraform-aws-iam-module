variable "assume_role_policy_document" {
  description = "Json policy document"
}

variable "tags" {
  description = "Additional tags to add to IAM Role Resource."
  type        = map(any)
  default     = {}
}

variable "role_name" {
  description = "The name of the role that needs to be created"
}