terraform {
  required_version = ">= 1.3.9"
  backend "s3" {}
} 

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
 assume_role { 
   role_arn  = var.role_arn
} 
  region   = var.region
}