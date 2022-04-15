variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}
variable "aws_ami" {
  type        = string
  description = "ubuntu-server-20.04"
  default     = "ami-04505e74c0741db8d"
}
variable "aws_profile" {
  type        = string
  description = ""
  default     = "default"
}
variable "aws_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu-Dev"
    Project = "Terraform-AWS"
  }
}