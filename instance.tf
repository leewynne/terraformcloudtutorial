# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/
resource "aws_instance" "terraform-cloud-ec2-demo" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

}



