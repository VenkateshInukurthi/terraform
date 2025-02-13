resource "aws_instance" "locals_instance" {
    count = length(var.instances)
    ami = data.aws_ami.locals.id
    vpc_security_group_ids = []
    instance_type = "t3.micro"
    tags = {
      Name = var.instances[count.index]
    }
  
}