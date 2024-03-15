variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "ami_id" {
    type = string
    default = "ami-03bb6d83c60fc5f7c"
  
}
variable "target_region" {
    type = string
    default = "us-west-2"
  
}