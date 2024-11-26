# public internet
resource "aws_internet_gateway" "igw" {
  tags = {
    Name    = "igw-${var.projeto}-${var.ambiente}"
    Project = var.projeto
    Environment = var.ambiente
  }
}

resource "aws_internet_gateway_attachment" "igw-attachment" {
  internet_gateway_id = aws_internet_gateway.igw.id
  vpc_id              = aws_vpc.vpc.id

  depends_on = [aws_vpc.vpc, aws_internet_gateway.igw]
}