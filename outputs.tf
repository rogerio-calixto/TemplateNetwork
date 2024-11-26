output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "subnet_publica_ids" {
  value = aws_subnet.public_subnets[*].id
}


output "subnet_privada_ids" {
  value = aws_subnet.private_subnets[*].id
}

output "avaiable_zones" {
  value = data.aws_availability_zones.available.names
}
