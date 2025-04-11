/*resource "aws_eip" "lb" {

  domain   = "vpc"
}
output "public_ip" {
    value = aws_eip.lb.public_ip
}

resource "aws_security_group" "allow_tls" {
  name        = "terraform-sg"
  description = "Managed Security Group"
  #vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "https_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.ip_add
  from_port         = var.https_port
  ip_protocol       = "tcp"
  to_port           = var.https_port
}
resource "aws_vpc_security_group_ingress_rule" "httpd_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.ip_add
  from_port         = var.httpd_port
  ip_protocol       = "tcp"
  to_port           = var.httpd_port
}
resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.ip_add
  from_port         = var.ssh_port
  ip_protocol       = "tcp"
  to_port           = var.ssh_port
}
resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.ip_add
  from_port         = var.app_port
  ip_protocol       = "tcp"
  to_port           = var.app_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
*/




