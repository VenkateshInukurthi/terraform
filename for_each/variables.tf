variable "instances" {
    type = map
    default = {
        mysql = "t3.micro"
        backend = "t3.small"
        frontend = "t3.medium"

    }
  
}