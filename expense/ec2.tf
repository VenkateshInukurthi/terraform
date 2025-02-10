resource "aws_security_group" "expense_sg" {
    name = "expense_sg"
    description = " Security group for expense project"

    egress {
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = merge(
      var.common_tags, 
      {Name = "expense_sg"}

    )
  
}

resource "aws_instance" "expense_instance" {
    count = length(var.instances)
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.expense_sg.id]

    tags = merge(
        { Name = var.instances[count.index] },
        var.common_tags
    )
  
}