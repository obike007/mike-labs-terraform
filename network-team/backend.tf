terraform {
  backend "s3" {
    bucket = "mike-terralabs-bkt"
    key    = "eip.tfstate"
    region = "eu-west-1"
  }
}