output "provider_arn" {
  description = "The ARN assigned by AWS for this provider."
  value       = aws_iam_openid_connect_provider.this.arn
}
