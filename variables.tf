variable "vpc_cidr" {
  default = "10.0.0.0/16"
  type    = string
}

variable "public_subnet_cidr" {
  default = "10.0.0.0/24"
  type    = string
}

variable "public_subnet2_cidr" {
  default = "10.0.2.0/24"
  type    = string
}

variable "private_subnet_cidr" {
  default = "10.0.1.0/24"
  type    = string
}

variable "lb_type" {
  default = ["application", "network", "gateway"]
  type    = list(string)
}

variable "instance_type" {
  default = "t2.micro"
  type    = string

}