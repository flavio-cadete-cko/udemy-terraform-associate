#Provider block
provider "aws" {
    region = "eu-west-1"
}

#Your S3 Bucket code
resource "aws_s3_bucket" "flc_s3_bucket" {
  bucket = "flc-udemy-course-bucket"
  acl    = "private"

  tags = {
    Name        = "FLC - My bucket"
    Environment = "Dev"
  }
}
