resource "aws_instance" "locals_instance" {
    count = length(local.instances)
    ami = data.aws_ami.locals.id
    vpc_security_group_ids = []
    instance_type = "t3.micro"
    tags = {
      Name = local.instances[count.index]
    }
  
}