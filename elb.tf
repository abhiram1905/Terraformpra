provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4I4LNALQP3HI4T67"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-0b1e534a4ff9019e0"
   instance_type = "t2.micro"
   key_name = "ec2-key"
}
 

