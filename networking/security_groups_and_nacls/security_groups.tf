resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.production_customer.id

  ingress {
    protocol = -1
    self = true
    from_port = 0
    to_port = 0
    security_groups = [
      aws_security_group.chained.id]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
}
resource "aws_security_group" "chained" {
  vpc_id = aws_vpc.production_customer.id

  ingress {
    protocol = -1
    self = true
    from_port = 0
    to_port = 0
    cidr_blocks = []
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
}