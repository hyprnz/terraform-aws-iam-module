module "example" {
  source = "../../../resources/role"
  
  providers = {
    aws = aws
  }

  role_name =     "JSONTESTROLEAWSLoadBalancerController"
  assume_role_policy_document = var.assume_role_policy_document 

}
provider "aws" {
  region = var.region
}

variable "region" {
  default = "ap-southeast-2"
}


variable "assume_role_policy_document"  {
  default = {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::854489628483:oidc-provider/oidc.eks.ap-southeast-2.amazonaws.com/id/428AD43341BD31E3D94CF2A832841183"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-southeast-2.amazonaws.com/id/428AD43341BD31E3D94CF2A832841183:sub": "system:serviceaccount:kube-system:aws-load-balancer-controllerModuleTest"
        }
      }
    }
  ]
}
}