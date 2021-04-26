provider "aws" {
  region = var.region
}

resource "aws_instance" "my-instance" {
  ami                    = "ami-013f17f36f8b1fefb"
  instance_type          = "t2.micro"
  key_name               = "deployer-key"
  subnet_id              = aws_subnet.My_VPC_Subnet.id
  vpc_security_group_ids = [aws_security_group.My_VPC_Security_Group.id]
  
}

