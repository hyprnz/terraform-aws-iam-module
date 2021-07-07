
variable "region" {
  type = string
  default = "ap-southeast-2"
}

variable "policy_document_json" {
  type        = string
  description = "JSON policy document"
}

variable "assume_role_policy_json" {
  type        = string
  description = "Json policy document"
}
