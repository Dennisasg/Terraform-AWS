locals {
  ip_filepath = "tfplan.out"
  common_tags = {
    Name        = "Bucket-Terraform-DEV"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Dennis"
    UpdatedAt   = "2022-04-15"
    "Year" = "2022"
  }
}

locals {
  instance_number = lookup(var.instance_number, var.environment )

  file_ext = "zip"
  object_name = "meu-arquivo-gerado-de-um-template"


}