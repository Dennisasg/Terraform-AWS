resource "aws_instance" "Ubuntu-Server-DEV" {
  ami = var.aws_ami
  instance_type = var.aws_type
  tags = var.instance_tags-dev
}