#Provider block
provider "aws" {
    region = "eu-west-1"
}

#EC2 Module Code
module "import:instance" {
  source = "../ec2-module/"
}