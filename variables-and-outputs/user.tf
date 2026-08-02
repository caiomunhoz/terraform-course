resource "aws_iam_user" "user" {
  name = var.user_name
}

resource "aws_iam_user_policy_attachment" "policy_attachment" {
  user       = aws_iam_user.user.name
  policy_arn = local.read_only_policy_arn
}