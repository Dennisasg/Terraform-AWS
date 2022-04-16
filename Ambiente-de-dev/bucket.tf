resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  tags   = local.common_tags
}
resource "aws_s3_bucket_acl" "acl-private" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key    = "${uuid()}.${local.file_ext}"
  source = data.archive_file.json.output_path
  etag = filemd5(data.archive_file.json.output_path)
  tags = local.common_tags
  content_type = "application/zip"
}

resource "aws_s3_bucket_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "arquivos-json/${random_pet.bucket.id}.json"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  tags         = local.common_tags
  content_type = "application/json"
}

