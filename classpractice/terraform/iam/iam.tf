## 1. creating iam policy
resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  path        = "/"
  description = "My test policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
## 2. creating IAM user
resource "aws_iam_user" "user_name" {
  name = "balu"
  path = "/system/"

  tags = {
    devops = "vtalent"
  }
}
### 3. attach policy to balu
resource "aws_iam_policy_attachment" "test-attach" {
  name       = "test-attachment"
  users      = [aws_iam_user.user_name.name]  ##implicit dependency
  #roles      = [aws_iam_role.first_role.name]
 # groups     = [aws_iam_group.group.name]
  policy_arn = aws_iam_policy.policy.arn  ## attribute
}
## 1. create another user
resource "aws_iam_user" "user_name2" {
  name = "mahendra"
}
## 2. attach already created policy to mahendra

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.user_name2.name
  policy_arn = aws_iam_policy.policy.arn
}
## 1. creat a iam role
resource "aws_iam_role" "first_role" {
  name = "my_role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })


}
## attach this role to aws instance
