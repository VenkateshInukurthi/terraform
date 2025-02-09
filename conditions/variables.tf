variable "instance_name" {
    type = list(string)
    default = [ "mysql","backend","frontend" ]
  
}

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "True"
        Environment = "Prod"
    }
  
}

variable "Environement" {
    type = string
    default = "prod"
  
}

variable "egress_from_to_port" {
    type = number
    default = 0
  
}

variable "ingress_from_to_port" {
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

variable "domain" {
    type = string
    default = "masterdevops.cloud"
  
}