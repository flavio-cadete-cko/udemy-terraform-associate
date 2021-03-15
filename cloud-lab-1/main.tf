#Remote Backend Configuration
terraform {
  backend "remote" {
    organization = "tf-udemy-course"

    workspaces {
      name = "cli-udemy-terraform-course"
    }
  }
}

#Provider Configuration
provider "aws" {
  region     = "eu-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

#S3 Bucket Configuration
resource "aws_s3_bucket" "flc_s3_bucket" {
  bucket_prefix = "flc-test"
}
