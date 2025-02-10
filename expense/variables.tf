variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "instances" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]
  
}

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "domain_name" {
    type = string
    default = "masterdevops.cloud"
  
}

variable "zone_id" {
    type = string
    default = "Z03980142KYPX1BJQWBBZ"
  
}