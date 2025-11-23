terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   cloud {
    organization = "Dhannya_Org"
    workspaces {
      name = "dhannya-tfc-demo"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "tfc-cli-demo-bucket-111-dhannya"
}
