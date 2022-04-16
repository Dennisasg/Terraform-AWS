resource "aws_vpc" "main" {
  cidr_block = "172.31.0.0/16"
  tags = {
    Name = "Vpc_dennis_terraform_import"
  }
}
