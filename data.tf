/*data "aws_iam_policy" "policy" {
  arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}*/

data "aws_ami" "ami_types" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}