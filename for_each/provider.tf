terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.65.0"
    }
  }
  backend "s3" {
    bucket = "laven-terraform-remote-state"
    key = "for-each-demo"
    region = "us-east-1"
    dynamodb_table = "laven-tf-remote-state"
    
  }
}

provider "aws" {
    region = "us-east-1"
  
}