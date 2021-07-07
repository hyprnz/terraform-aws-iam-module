variable "create_role" {
  type        = bool
  description = "Controls if the role should be created or should reference an already existing role."
  default     = true
}

variable "role_name" {
  type        = string
  description = "The role name to bind the policy to."
}

variable "role_description" {
  type        = string
  description = "The description for the role. Only used if `create_role` is `true`."
  default     = ""
}

variable "assume_role_policy_json" {
  type        = string
  description = "The assume role Json policy. Only used if `create_role` is `true`."
  default     = ""
}

variable "role_max_session_duration" {
  type        = number
  description = "Maximum session duration (in seconds) that you want to set for the specified role. Only used if `create_role` is `true`."
  default     = 3600
}

variable "policy_name" {
  description = "The name of the policy to create"
}

variable "policy_description" {
  description = "A description of the policy"
  default     = ""
}

variable "policy_document_json" {
  description = "JSON policy document"
}



variable "tags" {
  description = "Additional tags to add to IAM Role Resource."
  type        = map(any)
  default     = {}
}


