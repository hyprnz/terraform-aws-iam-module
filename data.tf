data "aws_caller_identity" "current" {
  provider = "aws.noassume"
}

data "terraform_remote_state" "organization" {
  backend = "s3"

  config {
    bucket   = "${var.terraform_state_bucket}"
    key      = "master/organization/terraform.tfstate"
    region   = "${var.terraform_state_bucket_region}"
    role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/TerragruntReader"
  }
}