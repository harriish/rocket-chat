provider "aws" {
  region = var.region
}

resource "aws_instance" "my-instance" {
  ami                    = "ami-013f17f36f8b1fefb"
  instance_type          = "t2.micro"
  key_name               = "deployer-key"
  subnet_id              = aws_subnet.My_VPC_Subnet.id
  vpc_security_group_ids = [aws_security_group.My_VPC_Security_Group.id]
  provisioner "remote-exec" {
    inline = ["echo 'hello'"]

    connection {
      type = "ssh"
      user = "ubuntu"
      host = aws_instance.my-instance.public_ip
    }
  }

  provisioner "local-exec" {
     command = "ansible-playbook -u ubuntu -i ${aws_instance.my-instance.public_ip}, play.yml"
    }  
}

