output "policy_name" {
  description = "The name of the policy created"
  value       = module.policy.policy_name
}


output "policy_arn" {
  description = "The name of the policy created"
  value       = module.policy.policy_arn
}

output "role_name" {
  description = "The name of the role created"
  value       = var.role_name
}

output "role_arn" {
  value = var.create_role ? aws_iam_role.this[0].arn : data.aws_iam_role.selected[0].arn
}

output "is_new_role" {
  value = var.create_role ? true : false
}
