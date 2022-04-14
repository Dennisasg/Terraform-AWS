resource "aws_instance" "Ubuntu-server" {
  ami = var.aws_ami
  instance_type = var.aws_type
  tags = var.instance_tags
}

resource "aws_instance" "Ubuntu-server-2" {
  ami = var.aws_ami
  instance_type = var.aws_type
  tags = var.instance_tags
}