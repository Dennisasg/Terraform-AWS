terraform {
  required_version = "1.1.7"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.9.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.2"
    }
  }
  #não se usa variaveis no bloco de core = núcleo que é o terraform"
  backend "s3" {
#rodar terraform init -backend=true -backend-config="backend.hcl"
  }
}
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

}
data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  versioning {
    enabled = true
  }

  tags = {
    Description = "Stores terraform remote state files"
    ManagedBy   = "Terraform"
    Owner       = "Dennis Gusmão"
    CreatedAt   = "2022-04-16"
  }
}