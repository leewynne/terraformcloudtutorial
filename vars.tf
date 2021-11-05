variable "AWS_REGION" {
  default = "eu-west-2"
}

variable "VPC_NAME" {
  default = "terraform-cloud-demo"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-06dcc4050edf88ea1"
    eu-west-2 = "ami-0d26eb3972b7f8c96"
  }
}

