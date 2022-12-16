provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
#   name              = "ec2-web-server"
  ami               = "ami-0b0dcb5067f052a63"
  availability_zone = "us-east-1b"
  instance_type     = "t2.micro"


  tags = {
    "Name" = "EC2-Web-Server"
  }
}