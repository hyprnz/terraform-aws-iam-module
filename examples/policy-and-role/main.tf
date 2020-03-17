module "example" {
  source = "../../policy-and-role"
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

  role_name = "k8s-ExampleServiceRole"

  tags = merge(map("Owner", "ExampleService"), map("environment", "stage"))
}

provider "aws" {
  region = var.region
}

variable "region" {
  default = "ap-southeast-2"
}
