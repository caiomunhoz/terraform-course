terraform {
  required_version = ">= 1.15.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf"
  default_tags {
    tags = {
      "owner"      = "caiomunhoz"
      "managed-by" = "terraform"
    }
  }
}