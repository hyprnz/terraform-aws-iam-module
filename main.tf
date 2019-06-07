terraform {
  backend "s3" {}

  # Restrict the version of Terraform able to run this module
  required_version = "~> 0.11"

  # Re-usable modules should constrain only the minimum allowed version
  # such as >= 1.0.0
  required_providers = {
    aws  = ">= 2.6.0"
  }
}

resource "aws_iam_user" "this" {
  count = "${var.create_user ? 1 : 0}"

  name                 = "${var.name}"
  path                 = "${var.path}"
  force_destroy        = "${var.force_destroy}"
  permissions_boundary = "${var.permissions_boundary}"
}

resource "aws_iam_user_login_profile" "this" {
  count = "${var.create_user && var.create_iam_user_login_profile ? 1 : 0}"

  user                    = "${aws_iam_user.this.name}"
  pgp_key                 = "${var.pgp_key}"
  password_length         = "${var.password_length}"
  password_reset_required = "${var.password_reset_required}"
}

resource "aws_iam_access_key" "this" {
  count = "${var.create_user && var.create_iam_access_key && var.pgp_key != "" ? 1 : 0}"

  user    = "${aws_iam_user.this.name}"
  pgp_key = "${var.pgp_key}"
}

resource "aws_iam_access_key" "this_no_pgp" {
  count = "${var.create_user && var.create_iam_access_key && var.pgp_key == "" ? 1 : 0}"

  user = "${aws_iam_user.this.name}"
}

resource "aws_iam_user_ssh_key" "this" {
  count = "${var.create_user && var.upload_iam_user_ssh_key ? 1 : 0}"

  username   = "${aws_iam_user.this.name}"
  encoding   = "${var.ssh_key_encoding}"
  public_key = "${var.ssh_public_key}"
}