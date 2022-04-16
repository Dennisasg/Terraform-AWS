variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""

}
variable "aws_ami" {
  type        = string
  description = "ubuntu-server-20.04"

}
variable "aws_profile" {
  type        = string
  description = ""

}
variable "aws_type" {
  type        = string
  description = ""

}

variable "instance_tags-dev" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu-Dev"
    Project = "Terraform-AWS"
  }
}
