resource "aws_instance" "Ubuntu-Server-DEV" {
  count = local.instance_number <= 0 ? 0 : local.instance_number
  ami           = var.aws_ami
  instance_type = lookup(var.aws_type,var.environment )
  tags          = merge(

    local.common_tags,
    {
      Project = "AWS-terraform"
      Env = format("%s", var.environment)
      Name = format("Instance %d", count.index +1)
    }

  )


}