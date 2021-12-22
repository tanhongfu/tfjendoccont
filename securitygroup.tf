resource "aws_security_group" "sg" {
  name        = "${local.Name}-companyname-Jenkins-sg"
  description = "Allow Jenkins traffic on port 22, 8080, 50000, 80"
  #vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "Localhost Access on port 8080"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {
    description = "Localhost Access on port 50000"
    from_port   = 50000
    to_port     = 50000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  /*ingress {
    description = "HTTP Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["223.25.0.0/16"]

  }*/

  ingress {
   description      = "want to test if http 0.0.0.0/0 access will resolve unhealthy target group status"
  from_port        = 80
   to_port          = 80
  protocol         = "tcp"
   cidr_blocks      = ["0.0.0.0/0"]

  }

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #tags = {
  #"market" = local.market
  #"product" = local.product
  #"application" = local.application
  #"environment" = local.environment
}