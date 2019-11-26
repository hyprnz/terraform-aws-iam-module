output "policy_name" {
  description = "The name of the policy created"
  value       = "${aws_iam_policy.this.name}"
}
