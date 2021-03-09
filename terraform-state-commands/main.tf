provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "flc_test_instance" {
  ami           = "ami-0debf1d5c6ecf21b8"
  instance_type = "t2.micro"
}

resource "aws_instance" "flc_test_instance_2" {
  ami           = "ami-0debf1d5c6ecf21b8"
  instance_type = "t2.micro"
}

# resource "aws_instance" "move_to_me" {
#   ami           = "ami-0debf1d5c6ecf21b8"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "moved"
#   }
# }
