resource "aws_s3_bucket" "my_bucket" {
    bucket = "mybucket032024"
  tags = {
    "Name" = "my_firstbucket" 
    "Environment" = "dev"
  }
}