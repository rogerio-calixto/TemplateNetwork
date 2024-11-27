# roteamento subnets publicas
resource "aws_route_table" "rt_pub" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name        = "rt_pub_${var.projeto}_${var.ambiente}"
    Project     = var.projeto
    Environment = var.ambiente
  }

  depends_on = [aws_vpc.vpc, aws_internet_gateway.igw]
}

resource "aws_route_table_association" "rt_association_pub" {
  count          = length(var.subnet_publica_config)
  route_table_id = aws_route_table.rt_pub.id
  subnet_id      = aws_subnet.public_subnets.*.id[count.index]

  depends_on = [aws_subnet.public_subnets]
}