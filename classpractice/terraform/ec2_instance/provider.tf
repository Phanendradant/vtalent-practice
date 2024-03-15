terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider # not a good practice
provider "aws" {
  region = "ap-south-1"
  #access_key = "my-access-key"
  #secret_key = "my-secret-key"
}