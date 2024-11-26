output "vpc-id" {
  value = aws_vpc.vpc.id
}

output "subnet-publica-ids" {
  value = aws_subnet.public-subnets[*].id
}


output "subnet-privada-ids" {
  value = aws_subnet.private-subnets[*].id
}

output "avaiable-zones" {
  value = data.aws_availability_zones.available.names
}
