module "role" {
  source                      = "../resources/role"
  role_name                   = var.role_name
  assume_role_policy_document = var.assume_role_policy_document
}


module "policy" {
  source             = "../resources/policy"
  policy_name        = var.policy_name
  policy_description = var.policy_description
  policy_document    = var.policy_document
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = module.role.role_name
  policy_arn = module.policy.policy_arn
}

