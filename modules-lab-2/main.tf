#Provider Block
provider "aws" {
  region = "eu-west-1"
}

#Module Code
module "windows" {
  source = "./ec2-module/"
  availability_zone = "eu-west-1a"
}