resource "aws_vpc" "my_vpc" {
    cidr_block = "192.168.0.0/16"  # cidr block
    tags = {
      "Name" = "first_vpc"
      "Environment" = "dev" 
    }
  
}
resource "aws_subnet" "my_subnets" {
    vpc_id = aws_vpc.my_vpc.id    # implicit dependency
    cidr_block = "192.168.0.0/24"
    tags = {
      "Name" = "first_subnets"
      "Environment" = "dev" 
    }
  
}
resource "aws_subnet" "my_subnet2" {
    vpc_id = aws_vpc.my_vpc.id    # implicit dependency
    cidr_block = "192.168.1.0/24"
    tags = {
      "Name" = "second_subnets"
      "Environment" = "dev" 
    }
  
}
resource "aws_subnet" "my_subnet3" {
    vpc_id = aws_vpc.my_vpc.id    # implicit dependency
    cidr_block = "192.168.2.0/24"
    tags = {
      "Name" = "third_subnets"
      "Environment" = "dev" 
    }
  
}