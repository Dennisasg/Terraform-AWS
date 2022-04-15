resource "aws_s3_bucket" "my-bucket-dennis-gusmao" {
  bucket = "my-bucket-dennis-gusmao"
  acl    = "private"

  tags = {
    Name        = "Bucket-Terraform"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Dennis Gusmão"
    UpdatedAt   = "2022-04-15"
  }
}

resource "aws_s3_bucket" "my-bucket-dev-dennis-gusmao" {
  bucket = "bucket-de-dev-dennis-gusmao"
  acl = "private"

  tags = {
    Name = "Bucket-Terraform-DEV"
    Environment = "Dev"
    ManagedBy = "Terraform"
    Owner = "Dennis"
    UpdatedAt = "2022-04-15"
  }
}