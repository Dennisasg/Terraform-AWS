resource "aws_s3_bucket" "my-bucket-dennis-gusmao" {
  bucket = "my-bucket-dennis-gusmao"
  acl = "provate"

  tags = {
    Name = "Bucket-Terraform"
    Environment = "Dev"
    ManagedBy = "Terraform"
  }
}
