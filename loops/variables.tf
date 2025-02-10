variable "instances" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]
      
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "environment" {
    type = string
    default = "DEV"
  
}

variable "tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "True"

    }
  
}

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"

}