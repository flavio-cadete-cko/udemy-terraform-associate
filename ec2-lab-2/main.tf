provider "aws" {
    region = "eu-west-1"
}

#Create an EC2 Resource Block
resource "aws_instance" "flc_ec2_lab_2" {
    ami = "ami-0aa2b94859c32a40f"
    instance_type = "t2.micro"

    tags = {
        Name = "flc_ec2_lab_2"
    }
}