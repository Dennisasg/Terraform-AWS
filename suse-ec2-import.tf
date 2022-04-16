resource "aws_instance" "suse-server" {
  tags ={
    Name    = "Suse-DEV"
    Project = "Terraform-AWS-ec2-Suse"
    Env     = "dev"
  }
  ami = "ami-08895422b5f3aa64a"
  instance_type = "t2.micro"
}