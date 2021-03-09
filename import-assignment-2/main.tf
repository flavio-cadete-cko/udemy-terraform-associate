#Provider block
provider "aws" {
  region = "eu-west-1"
}

#S3 Module block
module "s3_module" {
  source = "./s3-module/"
  bucket = "flc-udemy-course-bucket-2"
}