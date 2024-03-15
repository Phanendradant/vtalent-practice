resource "aws_instance" "db" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"
  # key_name = "my_key"

  tags = {
    Name = "my_ec2"
  }
}
