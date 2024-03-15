resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_range
    tags = {
      "Name" = var.vpc_tag
    }
  
}
resource "aws_subnet" "my_subnets" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnets_range
  
}