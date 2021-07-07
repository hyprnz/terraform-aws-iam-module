module "example" {
  source = "../../../managed-policy"

  providers = {
    aws = aws
  }
  create_role = true

  role_name               = "ExampleManagedPolicyRoleStage"
  assume_role_policy_json = var.assume_role_policy_json

  policy_name        = "ExampleManagedPolicyStage"
  policy_description = "An example policy used for testing the module."
  policy_document_json    = var.policy_document_json


  tags = {"Resource Owner" = "Managed Policy Example"}
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      "Environment" = "stage",
      "Managed By"  = "terraform"
    }
  }
}