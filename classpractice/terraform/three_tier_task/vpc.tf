
# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}
# Create Web Public Subnet
resource "aws_subnet" "my_sub_web1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.web_public_subnet1_range
  availability_zone       = var.web1_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.web1_tag
  }
}

resource "aws_subnet" "my_sub_web2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.web_public_subnet2_range
  availability_zone       = var.web2_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.web2_tag
  }
}
# Create Application Private Subnet
resource "aws_subnet" "my_sub_app1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.app_private_subnet1_range
  availability_zone       = var.app1_az
  map_public_ip_on_launch = false

  tags = {
    Name = var.app1_tag
  }
}

resource "aws_subnet" "my_sub_app2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.app_private_subnet2_range
  availability_zone       = var.app2_az
  map_public_ip_on_launch = false

  tags = {
    Name = var.app2_tag
  }
}
# Create Database Private Subnet
resource "aws_subnet" "my_sub_db1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.db_private_subnet1_range
  availability_zone = var.db1_az

  tags = {
    Name = var.db1_tag
  }
}

resource "aws_subnet" "my_sub_db2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.db_private_subnet2_range
  availability_zone = var.db2_az

  tags = {
    Name = var.db2_tag
  }
}