terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "82s-remote-states"
    key    = "module-demo"
    region = "us-east-1"
    dynamodb_table = "daws-state-locking"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}