resource "aws_instance" "Ubuntu-server-prod" {
  ami           = var.aws_ami
  instance_type = var.aws_type
  tags          = var.instance_tags
}
