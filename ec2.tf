resource "aws_instance" "Ubuntu-server" {
  ami           = var.aws_ami
  instance_type = var.aws_type
  tags          = var.instance_tags
}

resource "aws_instance" "Ubuntu-server-DEV" {
  ami           = var.aws_ami
  instance_type = var.aws_type
  tags          = var.instance_tags-DEV
}