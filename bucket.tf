resource "aws_s3_bucket" "my-bucket-dennis-gusmao" {
  bucket = "my-bucket-dennis-gusmao"
  acl    = "private"

  tags = {
    Name        = "Bucket-Terraform"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket" "my-bucket-dev" {
  bucket = "bucket-dev-dennis"
  acl    = "private"

  tags = {
    Name        = "Bucket de Dev"
    Environment = "Dev"
    ManagedBy   = "Terraform-Dev"
    Owner       = "Dennis Gusmão"
    UpdatedAt   = "2022-04-15"
  }
}