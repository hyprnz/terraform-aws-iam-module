module "example" {
  source = "../../identity-provider"

  providers = {
    aws = aws
  }

  identity_provider_url  = "https://accounts.google.com"
  client_id_list         = ["ExampleClientID"]
  thumbprint_list        = []
  tags                   = {"Env": "test"}
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  default = "ap-southeast-2"
}