output "policy_name" {
  description = "The name of the policy created"
  value       = module.policy.policy_name
}


output "policy_arn" {
  description = "The arn of the policy created"
  value       = module.policy.policy_arn
}


output "role_arn" {
  description = "The arn of the role created"
  value       = module.role.role_arn
}


output "role_name" {
  description = "The name of the role created"
  value       = module.role.role_name
}