resource "aws_instance" "jenkins_instance" {
  ami                    = data.aws_ami.ami_types.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg.id]
  #subnet_id              = aws_subnet.private.id
  key_name = "Jenkins Key Pair"
  user_data = "${file("docker_jenkins.sh")}"
  
  tags = {
    Name = "${local.Name}-companyname-jenkins"
    #"market" = local.market
    # "product" = local.product
    #"application" = local.application
    # "environment" = local.environment 
  }
}