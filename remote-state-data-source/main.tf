terraform {
  required_version = ">= 1.15.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket  = "tf-remote-state-10d5ad762746cac680247ac8ed"
    key     = "vm/terraform.tfstate"
    region  = "us-east-1"
    profile = "tf"
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

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket  = "tf-remote-state-10d5ad762746cac680247ac8ed"
    key     = "vpc/terraform.tfstate"
    region  = "us-east-1"
    profile = "tf"
  }
}