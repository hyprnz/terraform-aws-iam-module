module "example" {
  source = "../../policy-to-role"
  providers = {
    aws = aws
  }

  policy_name        = "ExamplePolicy"
  policy_sid         = "ExamplePolicyActions"
  policy_description = "Example policy for testing"

  policy_actions = [
    "iam:CreatePolicy",
    "iam:GetRole",
    "iam:GetPolicyVersion",
    "iam:GetPolicy",
    "iam:CreateRole",
    "iam:DeleteRole",
    "iam:AttachRolePolicy",
    "iam:ListAttachedRolePolicies",
  ]

  role_name = "IndividualContributor"
}

provider "aws" {
  region = var.region
}

variable "region" {
  default = "ap-southeast-2"
}
