terraform {
  backend "s3" {
    bucket = "buckstone-scouts-terraform-state"
    key = "buckstone-scouts-terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
  default_tags {
    tags = {
      Website   = var.site_name
      Terraform = "True"
    }
  }
}

provider "aws" {
  alias      = "acm_provider"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "us-east-1"
  default_tags {
    tags = {
      Website   = var.site_name
      Terraform = "True"
    }
  }
}
