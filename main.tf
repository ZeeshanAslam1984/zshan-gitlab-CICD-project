terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   backend "http" {
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
    source  = "./ec2"
}
