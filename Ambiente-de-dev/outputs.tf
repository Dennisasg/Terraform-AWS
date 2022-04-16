output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "aws_instance_DEV_Ip-Private" {
  value       = aws_instance.Ubuntu-Server-DEV.private_ip
  description = "ip privado"
}
output "aws_instance_DEV_Ip-Public" {
  value = aws_instance.Ubuntu-Server-DEV.public_ip
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote-state.bucket
}