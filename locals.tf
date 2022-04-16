locals {
  ip_filepath = "tfplan.out"
  common_tags = {
    Name        = "Bucket-Terraform-DEV"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Dennis"
    UpdatedAt   = "2022-04-15"
  }
}