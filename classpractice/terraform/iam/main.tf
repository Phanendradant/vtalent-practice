resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = "my_key"
  associate_public_ip_address = true
  #iam_instance_profile = aws_iam_role.first_role.name

  # key_name = "my_key"

  tags = {
    Name = "my_ec2"
  }
}
resource "aws_iam_role_policy_attachment" "my_role" {
    role = aws_iam_role.first_role.name
    policy_arn = aws_iam_policy.policy.arn
  
}


## i didnot attach role to ec2 instance

