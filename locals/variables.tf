variable "instances" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"] 
}