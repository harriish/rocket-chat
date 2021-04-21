provider "aws" {
  region = var.region
}

resource "aws_instance" "my-instance" {
  ami           = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
  provisioner "remote-exec" {
    inline = ["waiting to see if ssh is ready"]

    connection {
      type = "ssh"
      user = "ubuntu"
      host = aws_instance.my-instance.public_ip
    }
  }


  provisioner "local-exec" {
     command = "ansible-playbook -i $(aws_instance-my-instance.public_ip) play.yml"
    }  
}

