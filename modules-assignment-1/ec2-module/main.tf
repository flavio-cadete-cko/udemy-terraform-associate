#AWS Instance
resource "aws_instance" "flc_aws_instance" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"
    availability_zone = var.availability_zone
    
    tags = {
      "Name" = "flc_aws_instance"
    }
}

#AMI Filter for Ubuntu
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
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

#Cloudwatch Metric
resource "aws_cloudwatch_metric_alarm" "flc_cw_alarm" {
  alarm_name                = "cpu-utilization"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "2"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "80"
  alarm_description         = "This metric monitors ec2 cpu utilization"
  insufficient_data_actions = []

  dimensions = {
    "InstanceId" = aws_instance.flc_aws_instance.id
  }
}
