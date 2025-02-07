variable "ami" {
    type = string
    description = "ami_id of Devops-practice"
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string
  description = "Instance type of the server"
  default = "t3.micro"
}