resource "aws_iam_group" "test_group" {
  name = "test_group12"
}

module "example" {
  create_user= true
  create_iam_user_login_profile = true
  source = "../../user-group"
  name = "test_user12"
  user_groups = [aws_iam_group.test_group.id]
  pgp_key = "keybase:phiroict"
  create_iam_access_key = true
}

output "pgp_secret_messages" {
  value = module.example.keybase_password_pgp_message
}