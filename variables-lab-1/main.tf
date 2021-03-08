provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "test_instance" {
  ami           = "YOUR AMI"
  instance_type = var.instance_type
  tags = {
      Name = "test_instance_1"
      environment = "test"
  }
}

resource "aws_instance" "test_instance_2" {
  ami           = "YOUR AMI"
  instance_type = var.instance_type
  tags = {
      Name = "test_instance_2"
      environment = "test"
  }
}