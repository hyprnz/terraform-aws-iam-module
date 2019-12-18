terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = "~> 2.19"
  }
}

provider "aws" {
  alias  = "noassume"
  region = var.aws_region
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${var.aws_account_number}:role/Administrator"
  }
  region = var.aws_region
}

