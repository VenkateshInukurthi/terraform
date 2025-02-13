variable "instances" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]

}
variable "domain_name" {
  type    = string
  default = "masterdevops.cloud"

}

variable "zone_id" {
  type    = string
  default = "Z03980142KYPX1BJQWBBZ"

}

variable "project" {
  type    = string
  default = "expense"

}

variable "environment" {
  type    = string
  default = "dev"

}

variable "common_tags" {
  type    = map(any)
  default = {}

}