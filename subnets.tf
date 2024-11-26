data "aws_availability_zones" "available" {}

# subnets privadas

resource "aws_subnet" "private_subnets" {
  count             = length(var.subnet_privada_config)
  availability_zone = var.subnet_privada_config[count.index].available_zone
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_privada_config[count.index].cidr_block

  tags = {
    Name        = "subnet_pvd_${var.projeto}_${var.ambiente}_${count.index + 1}"
    Project     = var.projeto
    Environment = var.ambiente
  }

  depends_on = [aws_vpc.vpc]
}

# subnets publicas
resource "aws_subnet" "public_subnets" {
  count                   = length(var.subnet_publica_config)
  availability_zone       = var.subnet_publica_config[count.index].available_zone
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_publica_config[count.index].cidr_block
  map_public_ip_on_launch = true
  tags = {
    Name        = "subnet_pub_${var.projeto}_${var.ambiente}_${count.index + 1}"
    Project     = var.projeto
    Environment = var.ambiente
  }

  depends_on = [aws_vpc.vpc]
}