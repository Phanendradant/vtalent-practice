variable "target_region" {
    type = string
    default = "us-west-2"
  
}
variable "vpc_range" {
    type = string
    default = "192.168.0.0/16"
  
}
variable "vpc_tag" {
    type = string
  
}
variable "subnets_range" {
    type = string
  
}