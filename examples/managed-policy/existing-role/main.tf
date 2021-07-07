module "example" {
  source = "../../../managed-policy"

  providers = {
    aws = aws
  }
  create_role = false

  role_name               = "ExampleManagedPolicyRoleStage"

  policy_name        = "ExampleManagedPolicyAdditionalStage"
  policy_description = "An additional example policy bound to the testing policy for the module."
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