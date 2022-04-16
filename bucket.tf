resource "aws_s3_bucket" "my-bucket-dennis" {
  bucket = "bucket-terraform-dev-dennis"
  tags = {
    Name        = "Bucket-Terraform-DEV"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Dennis"
    UpdatedAt   = "2022-04-15"
  }
}
resource "aws_s3_bucket_acl" "acl-private" {
  bucket = aws_s3_bucket.my-bucket-dennis.id
  acl = "private"
}
