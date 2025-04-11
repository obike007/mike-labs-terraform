/*provider "aws" {
  region     = "eu-west-1"
  
}
resource "aws_instance" "myec2" {
  ami                     = var.ami
  instance_type           = var.regions["t2.nano"]
  
  tags = {
    Name = "my-first-EC2"

  }
}

variable "vms"{
  type = list 
  default = ["t2.micro", "t2.nano", "m5.large", "t2.medium"]

}
variable "regions" {
type = map
default = {
  us-east-1a = "t2.micro"
  us-west-1a = "t2.nano"
  eu-west-1a = "m5.large"

}
}



resource "aws_iam_user" "example" {
  name          = "demouser"
}



provider azurerm {}


variable environment{
  default = "staging"

}
variable region{
  default = "eu-west-1"

}

resource "aws_instance" "my_first_ec2" {
  ami                     = "ami-00385a401487aefa4"
  instance_type           = var.environment == "staging" && var.region == "eu-west-1" ? "t2.micro" : "t2.medium"
  count                   =  3

  tags = {
    Name = "payments-solution-${count.index}"
  }
}

variable "dev_names"{
  type = list
  default = ["Femi", "Akin", "Obi","Emeka"]
}

resource "aws_iam_user" "mike"{
  name = var.dev_names[count.index]
  count = 4
}

provider "aws" {
  region     = "eu-west-1"
}
resource "local_file" "foo" {
  content = "foo!"
  filename = "${path.module}/foo.txt"

}


/*data "local_file" "foo" {
  content = "foo!"
  filename = "${path.module}/demo.txt"

}

output "data"{
  value = data.local_file.foo.content

}
*/


/*data "aws_ami" "myimage" {
  owners = ["amazon"]
  most_recent      = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}
resource "aws_instance" "myec2" {
  ami                     = data.aws_ami.myimage.image_id
  instance_type           = "t2.micro"
  
}
*/







