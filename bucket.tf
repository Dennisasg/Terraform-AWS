resource "aws_s3_bucket" "my-bucket-dennis-gusmao" {
  bucket = "my-bucket-dennis-gusmao"
  acl = "private"

  tags = {
    Name = "Bucket-Terraform"
    Environment = "Dev"
    ManagedBy = "Terraform"
  }
}
