data "aws_iam_role" "selected" {
  count = var.create_role ? 0 : 1

  name = var.role_name
}

resource "aws_iam_role" "this" {
  count = var.create_role ? 1 : 0

  name        = var.role_name
  description = var.role_description

  assume_role_policy   = var.assume_role_policy_json
  max_session_duration = var.role_max_session_duration

  tags = var.tags
}


module "policy" {
  source             = "../resources/policy"
  policy_name        = var.policy_name
  policy_description = var.policy_description
  policy_document    = var.policy_document_json
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = var.create_role ? aws_iam_role.this[0].name : var.role_name
  policy_arn = module.policy.policy_arn
}

