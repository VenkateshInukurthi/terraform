resource "aws_instance" "data_sources" {
    count = length(var.instances)
    instance_type = "t3.small"
    ami = data.aws_ami.joindevops.id
    vpc_security_group_ids = [aws_security_group.test_data_sources.id]

    tags = {
      Name = var.instances[count.index]
    }
}