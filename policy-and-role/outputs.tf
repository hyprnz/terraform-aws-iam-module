output "policy_arn" {
  description = "The arn of the policy created"
  value       = aws_iam_policy.this.arn
}

output "role_arn" {
  description = "The arn of the policy created"
  value       = aws_iam_role.this.arn
}