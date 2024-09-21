resource "aws_internet_gateway" "lanchonete_igw" {
  vpc_id = aws_vpc.lanchonete_vpc.id

  tags = {
    Name = var.aws_igw_name
  }
}
