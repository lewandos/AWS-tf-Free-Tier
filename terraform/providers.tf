terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  access_key = "AKIAYEKP534OJ2CTGNCX"
  secret_key = "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"
}
