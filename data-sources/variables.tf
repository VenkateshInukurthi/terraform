variable "instances" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]
  
}

variable "zone_id" {
    type = string
    default = "Z03980142KYPX1BJQWBBZ"
  
}

variable "domain_name" {
    type = string
    default = "masterdevops.cloud"
  
}

variable "project" {
    type = string
    default = "expense"
  
}