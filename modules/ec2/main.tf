terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.50"
    }
  }
}
resource "aws_instance" "mynewec2" {

  ami = var.ami           
  instance_type =  var.instance_type
}
output "instance_id" {
    value = aws_instance.mynewec2.id 
}


