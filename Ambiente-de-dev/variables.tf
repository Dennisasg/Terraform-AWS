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
validation {
  condition = length(var.aws_ami) > 4 && substr(var.aws_ami, 0,4) == "ami-"
  error_message = "The aws_ami value must be a valid AMI id, starting with \"ami-\"."
}
}
variable "instance_number" {
  type = object({
    dev = number
    prod = number
  })

  description = "Number of instances to create"
  default = {
    dev = 1
    prod = 3
  }
}
variable "aws_profile" {
  type        = string
  description = ""

}
variable "aws_type" {
  type = object({
    dev = string
    prod = string
  })

  description = ""
  default = {
    dev = "t2.micro"
    prod = "t2.medium"
  }

}

variable "instance_tags-dev" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu-Dev"
    Project = "Terraform-AWS"
  }
}
