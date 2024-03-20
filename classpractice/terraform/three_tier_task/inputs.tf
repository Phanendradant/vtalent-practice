# VPC
variable "target_region" {
  type    = string
  default = "us-west-2"

}
variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"

}
variable "vpc_name" {
  type = string

}
## WEB public network
variable "web1_tag" {
  type = string

}
variable "web_public_subnet1_range" {
  type = string

}
variable "web1_az" {
  type = string

}
variable "web_public_subnet2_range" {
  type = string

}
variable "web2_az" {
  type = string

}
variable "web2_tag" {
  type = string

}
variable "app_private_subnet1_range" {
  type = string

}
variable "app1_az" {
  type = string

}
variable "app1_tag" {
  type = string

}
variable "app_private_subnet2_range" {
  type = string

}
variable "app2_az" {
  type = string

}
variable "app2_tag" {
  type = string

}
variable "db_private_subnet1_range" {
  type = string

}
variable "db1_az" {
  type = string

}
variable "db1_tag" {
  type = string

}
variable "db_private_subnet2_range" {
  type = string

}
variable "db2_az" {
  type = string

}
variable "db2_tag" {
  type = string

}
variable "webserver1_ami" {
  type = string

}
variable "webserver1_instance_type" {
  type = string

}
variable "webserver1_az" {
  type = string

}
variable "webserver1_tag" {
  type = string

}
variable "webserver2_ami" {
  type = string

}
variable "webserver2_instance_type" {
  type = string

}
variable "webserver2_az" {
  type = string

}
variable "webserver2_tag" {
  type = string

}
