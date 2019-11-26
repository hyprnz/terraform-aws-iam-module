module "example" {
  source = "../../role-policy"

  policy_name = "K8sS3DatastoreModule"
  policy_sid  = "K8S3Datastore"

  policy_actions = [
    "iam:CreatePolicy",
    "iam:GetRole",
    "iam:GetPolicyVersion",
    "iam:GetPolicy",
    "iam:CreateRole",
    "iam:DeleteRole",
    "iam:AttachRolePolicy",
    "iam:ListAttachedRolePolicies",
  ]

  role_name = "IndividualContributor"
}
