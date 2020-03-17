data "aws_iam_policy_document" "this" {
  statement {
    sid = var.policy_sid

    actions = var.policy_actions

    resources = var.policy_resources
  }
}

resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = var.policy_description
  path        = "/"
  policy      = data.aws_iam_policy_document.this.json
}

data "aws_iam_policy_document" "role_assume_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = var.role_principal_type
      identifiers = var.role_principal_identifiers
    }
  }
}

resource "aws_iam_role" "this" {
  name = var.role_name

  assume_role_policy = data.aws_iam_policy_document.role_assume_policy.json

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this.arn
}

