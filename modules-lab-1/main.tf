provider "aws" {
  region = "eu-west-1"
}

module "windows" {
  source = "./ec2-module/"
}