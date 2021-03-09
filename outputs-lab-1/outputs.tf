output "flc_private_ip" {
  value = aws_instance.flc_output_lab_1.private_ip
  description = "private id for test instance"
}

# output "private_id_2" {
#   value = aws_instance.flc_output_lab_1.private_ip
#     description = "private id for test instance 2"
# }
