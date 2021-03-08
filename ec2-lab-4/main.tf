provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "flc-tags-test" {
    ami = "ami-0debf1d5c6ecf21b8"
    instance_type = "t2.micro"
    #Add Tags
    tags = {
        Name = "flc_ec2_lab_3"
        environment = "playground"
    }
}

resource "aws_ebs_volume" "flc-example" {
  availability_zone = "eu-west-1c"
  size              = 40
}

resource "aws_volume_attachment" "flc-ebs_att" {
  device_name = "/dev/sdh"
  volume_id   =  aws_ebs_volume.flc-example.id
  instance_id = aws_instance.flc-tags-test.id
}