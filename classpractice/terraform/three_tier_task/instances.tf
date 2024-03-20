
#Create EC2 Instance
resource "aws_instance" "webserver1" {
  ami                    = var.webserver1_ami
  instance_type          = var.webserver1_instance_type
  availability_zone      = var.webserver1_az
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.my_sub_web1.id
  user_data              = file("install_httpd.sh")

  tags = {
    Name = var.webserver1_tag
  }

}

resource "aws_instance" "webserver2" {
  ami                    = var.webserver2_ami
  instance_type          = var.webserver2_instance_type
  availability_zone      = var.webserver2_az
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.my_sub_web2.id
  user_data              = file("install_apache.sh")

  tags = {
    Name = var.webserver2_tag
  }

}