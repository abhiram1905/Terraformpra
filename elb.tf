provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4I4LNALQP3HI4T67"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-0b1e534a4ff9019e0"
   instance_type = "t2.micro"
   key_name = "ec2-key"
   vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

   connection {
     type = "ssh"
     user = "ec2-user"
     private_key = file("./ec2-key.pem")
     host = self.public_ip
   }
}


 provisioner "remote-exec" {
     on_failure = continue
     inline = [
       "sudo yum -y install nano"
     ]
   }



