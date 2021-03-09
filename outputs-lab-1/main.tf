provider "aws" {
  region = var.region
}

resource "aws_instance" "flc_output_lab_1" {
  ami           = "ami-0aa2b94859c32a40f"
  instance_type = var.instance_type
  tags = {
      Name = "test_instance_1"
      environment = "test"
  }
}

# resource "aws_instance" "flc_output_lab_1_res_2" {
#   ami           = var.image_id
#   instance_type = var.instance_type
#   tags = {
#       Name = "test_instance_2"
#       environment = "test"
#   }
# }