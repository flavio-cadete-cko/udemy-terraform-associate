#S3 bucket module code
resource "aws_s3_bucket" "flc_s3_bucket" {
  bucket = "flc-udemy-course-bucket-2"
  acl    = "private"
}
