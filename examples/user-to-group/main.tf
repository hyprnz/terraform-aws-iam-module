resource "aws_iam_group" "test_group" {
  name = "test_group2"
}

module "example" {
  providers = {
    aws = aws
  }
  create_user                   = true
  create_iam_user_login_profile = true
  source                        = "../../user-to-group"
  name                          = "test_user2"
  user_groups                   = ["${aws_iam_group.test_group.id}"]
  pgp_key                       = "keybase:iam-user"
  create_iam_access_key         = true
}

output "pgp_message_key" {
  value = "${module.example.keybase_password_pgp_message}"
}

provider "aws" {
  region = var.region
}

variable "region" {
  default = "ap-southeast-2"
}
