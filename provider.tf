provider "aws" {
  alias     = "noassume"
  region    = "${var.aws_region}"
  profile   = "${var.aws_profile}"
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${data.terraform_remote_state.organization.infosec_acct_id}:role/Administrator"
  }
  region = "${var.aws_region}"
  profile   = "${var.aws_profile}"
}