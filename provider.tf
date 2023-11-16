# this part is about particular version 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

#providers
provider "aws" {
  # Configuration options
  region = "us-east-1"
}