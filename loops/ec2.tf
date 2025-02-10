resource "aws_security_group" "AWS_LOOP_TEST" {
    name = "AWS_LOOP_TEST"
    description = "Testing loops in terraform - Count based loop"

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

    tags = merge({
      Name = "AWS_LOOP_TEST"
    },
    var.tags)
}

resource "aws_instance" "Loops_test" {
    count = length(var.instances)
    ami = var.ami_id
    instance_type = var.environment == "prod" ? var.instance_type : "t3.small"
    vpc_security_group_ids = [aws_security_group.AWS_LOOP_TEST.id]

    tags = {
      Name = var.instances[count.index]
    }
  
}