#Terraform Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0"
    }
  }
}

#Provider Block
provider "aws" {
  region = "eu-north-1"
}