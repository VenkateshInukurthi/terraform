variable "ami_id" {
    type = string
    description = "ami_id of Devops-practice"
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string
  description = "Instance type of the server"
  default = "t3.micro"
}

variable "tags" {
  type = map
  default = {
    Name = "Terraform-practice"
    Terrafform = "True"

  }
  
}

variable "egress_from_port" {
  type = number
  default = 0
  
}

variable "egress_to_port" {
  type = number
  default = 0
  
}

variable "ingress_to_port" {
  type = number
  default = 22
  
}

variable "ingress_from_port" {
  type = number
  default = 22
  
}

variable "protocol" {
  type = string
  default = "tcp"
  
}

variable "cidr_blocks" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
  
}

variable "ipv6_cidr_blocks" {
  type = list(string)
  default = [ "::/0" ]
  
}