resource "aws_instance" "mynewec2" {
  ami           = "ami-01ff9fc7721895c6b"
  instance_type = "t2.micro"
  key_name = "project-idx"
  vpc_security_group_ids = ["sg-063b54a530f723307"]

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key  = "project-idx.pem"
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "yum -y install nginx",
      "systemctl start nginx"
    ]
  }

  /*provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ips.txt"
  }
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
  */
}

