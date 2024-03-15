resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_range  # cidr block
    tags = {
      "Name" = "Ntier"
      "Environment" = "dev" 
    }
  
}
resource "aws_subnet" "my_subnets" {
    vpc_id = aws_vpc.my_vpc.id    # implicit dependency
    cidr_block = cidrsubnet(var.vpc_range,8,count.index)  # cidr function
    availability_zone = var.azs[count.index]
    count = length(var.subnets_tags)
    tags = {
      "Name" = var.subnets_tags[count.index] 
    }
}


## [refere here](https://developer.hashicorp.com/terraform/language/functions/cidrsubnet) for cidrsubnets function

