data "aws_availability_zones" "available" {}

# subnets privadas

resource "aws_subnet" "private-subnets" {
  count             = length(var.subnet-privada-config)
  availability_zone = var.subnet-privada-config[count.index].available_zone
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet-privada-config[count.index].cidr_block

  tags = {
    Name        = "subnet-pvd-${var.projeto}-${var.ambiente}-${count.index + 1}"
    Project     = var.projeto
    Environment = var.ambiente
  }

  depends_on = [aws_vpc.vpc]
}

# subnets publicas
resource "aws_subnet" "public-subnets" {
  count                   = length(var.subnet-publica-config)
  availability_zone       = var.subnet-publica-config[count.index].available_zone
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet-publica-config[count.index].cidr_block
  map_public_ip_on_launch = true
  tags = {
    Name        = "subnet-pub-${var.projeto}-${var.ambiente}-${count.index + 1}"
    Project     = var.projeto
    Environment = var.ambiente
  }

  depends_on = [aws_vpc.vpc]
}