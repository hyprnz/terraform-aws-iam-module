
variable "region" {
  type = string  
  default = "ap-southeast-2"
}

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

variable "assume_role_policy_document" {
  description = "Json policy document"
}

variable "tags" {
  description = "Additional tags to add to IAM Role Resource."
  type        = map(any)
  default     = {}
}

variable "role_name" {
  description = "The name of the role"
}