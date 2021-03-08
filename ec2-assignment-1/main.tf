#Create the aws provide code. Find help at - https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
    region = "eu-west-1"
}

#Create the EC2 instance resource code. Find help at - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "flc_ec2_assignment_1" {
    ami = "ami-0debf1d5c6ecf21b8"
    instance_type = "t2.micro"

    tags = {
        Name = "flc_ec2_assignment_1"
    }
}