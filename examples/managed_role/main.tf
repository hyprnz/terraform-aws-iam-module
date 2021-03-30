module "example" {
  source = "../../managed-role"

  providers = {
    aws = aws
  }
  policy_name                 = var.policy_name
  policy_description          = var.policy_description
  policy_document             = jsonencode(var.policy_document)
  role_name                   = var.role_name
  assume_role_policy_document = jsonencode(var.assume_role_policy_document) 
  tags                        = var.tags
}
provider "aws" {
  region = var.region
}