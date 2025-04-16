module "ec2" {
  source = "../../modules/ec2"
  region = "eu-west-1"
  instance_type = "t2.micro"
  ami = "ami-01ff9fc7721895c6b"
}
resource "aws_eip" "lb" {
    domain   = "vpc"
    instance = module.ec2.instance_id
  
}



