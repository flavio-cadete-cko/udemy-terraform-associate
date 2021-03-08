#Create your provider configuration
provider "aws" {
    region = "eu-west-1"
}

#Create an EC2 Instance with Tags
resource "aws_instance" "flc_ec2_assignment_2" {
    ami = "ami-0debf1d5c6ecf21b8"
    instance_type = "t2.micro"
    #Add Tags
    tags = {
        Name = "flc_ec2_assignment_2"
        environment = "playground"
    }
}