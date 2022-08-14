terraform {
  required_version = "1.2.6"
  backend "s3" {
    bucket = "terraform-demo-tfstate-st"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
