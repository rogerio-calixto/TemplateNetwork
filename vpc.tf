resource "aws_vpc" "vpc" {
  cidr_block                           = var.cidr_block
  instance_tenancy                     = "default"
  enable_network_address_usage_metrics = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.projeto}_vpc_${var.ambiente}"
  }

  lifecycle {
    create_before_destroy = true
  }
}