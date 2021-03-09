#S3 bucket module code
resource "aws_s3_bucket" "flc_s3_bucket" {
  bucket = var.bucket
  acl    = "private"
}
