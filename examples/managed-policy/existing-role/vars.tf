
variable "region" {
  type = string
  default = "ap-southeast-2"
}

variable "policy_document_json" {
  type        = string
  description = "JSON policy document"
}
