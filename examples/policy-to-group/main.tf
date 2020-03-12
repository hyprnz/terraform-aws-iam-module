module "example" {
  source = "../../policy-to-group"
  providers = {
    aws = aws
  }

  policy_name = "ExampleECRAccess"
  policy_sid  = "ExampleAccesstoECR"

  policy_actions = [
    "ecr:PutImageTagMutability",
    "ecr:ListTagsForResource",
    "ecr:UploadLayerPart",
    "ecr:BatchDeleteImage",
    "ecr:ListImages",
    "ecr:DeleteRepository",
    "ecr:CompleteLayerUpload",
    "ecr:TagResource",
    "ecr:DescribeRepositories",
    "ecr:DeleteRepositoryPolicy",
    "ecr:BatchCheckLayerAvailability",
    "ecr:GetLifecyclePolicy",
    "ecr:PutLifecyclePolicy",
    "ecr:GetLifecyclePolicyPreview",
    "ecr:CreateRepository",
    "ecr:GetDownloadUrlForLayer",
    "ecr:GetAuthorizationToken",
    "ecr:DeleteLifecyclePolicy",
    "ecr:PutImage",
    "ecr:UntagResource",
    "ecr:BatchGetImage",
    "ecr:DescribeImages",
    "ecr:StartLifecyclePolicyPreview",
    "ecr:InitiateLayerUpload",
    "ecr:GetRepositoryPolicy",
  ]

  group_name = "PushToECR"
}

provider "aws" {
  region = var.region
}

variable "region" {
  default = "ap-southeast-2"
}
