output "role_arn" {
  description = "The arn of the role created"
  value       = aws_iam_role.this.arn
}


output "role_name" {
  description = "The name of the role created"
  value       = aws_iam_role.this.name
}
