data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "mike-terralabs-bkt"
    key    = "eip.tfstate"
    region = "eu-west-1"
    }
  }