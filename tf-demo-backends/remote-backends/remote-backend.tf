terraform {
  backend "s3" {
    bucket = "mike-terralabs-backend"
    key    = "networks/terraform.tfstate"
    region = "eu-west-1"
  }
}
