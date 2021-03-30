
resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = var.policy_description
  path        = "/"
  policy      = var.policy_document
}

