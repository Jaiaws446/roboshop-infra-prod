terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "jaiaws446-state-prod"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "jaiaws446-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}