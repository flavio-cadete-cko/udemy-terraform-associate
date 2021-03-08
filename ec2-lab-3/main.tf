#Provider Block
provider "aws" {
    region = "eu-west-1"
}

#EC2 Block w/tags
resource "aws_instance" "tags-test" {
    ami = "ami-0debf1d5c6ecf21b8"
    instance_type = "t2.micro"
    #Add Tags
    tags = {
        Name = "flc_ec2_lab_3"
        environment = "playground"
    }
}