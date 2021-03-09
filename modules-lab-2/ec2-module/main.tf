#AWS Instance
resource "aws_instance" "flc_aws_instance" {
    ami = data.aws_ami.windows.id
    instance_type = "t2.micro"
    availability_zone = var.availability_zone
}

#AMI Filter for Windows Server 2019 Base
data "aws_ami" "windows" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["801119661308"] # Canonical
}

#EBS Volume and Attachment
resource "aws_ebs_volume" "flc_ebs_volume" {
  availability_zone = var.availability_zone
  size = 4
  tags = {
    "Name" = "FLC Data Drive"
  }
}

resource "aws_volume_attachment" "flc_ebs_att" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.flc_ebs_volume.id
  instance_id = aws_instance.flc_aws_instance.id
  
}

