resource "aws_instance" "for_each_demo" {
    for_each = var.instances
  
}