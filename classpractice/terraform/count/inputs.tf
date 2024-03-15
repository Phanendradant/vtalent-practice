variable "target_region" {
    description = "give reqired region"
    type = string
    default = "us-west-2"
  
}
variable "vpc_range" {
    description = "give cidr for vpc"
    type = string
    default = "192.168.0.0/16"
  
}
variable "subnets_range" {
    description = "give all subnet cidrs"
    type = list(string)
    default = [ "192.168.0.0/24","192.168.1.0/24","192.168.2.0/24" ]
  
}
variable "subnets_tags" {
    description = "give names"
    type = list(string)
    default = [ "web","app","db" ]   
}