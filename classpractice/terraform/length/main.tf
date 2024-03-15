resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_range  # cidr block
    tags = {
      "Name" = "Ntier"
      "Environment" = "dev" 
    }
  
}
resource "aws_subnet" "my_subnets" {
    vpc_id = aws_vpc.my_vpc.id    
    count = length(var.subnets_range)
    cidr_block = var.subnets_range[count.index]
    availability_zone = var.azs[count.index]
    tags = {
      "Name" = var.subnets_tags[count.index] 
    }
}
