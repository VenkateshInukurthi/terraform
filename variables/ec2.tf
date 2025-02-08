resource "aws_security_group" "test_variables" {
    name = "Allow_SSH_VARS"
    description = "Allowing port 22 for SSH transport"

    egress {
        from_port = var.egress_from_port
        to_port = var.egress_to_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }
    ingress {
        from_port = var.ingress_from_port
        to_port = var.ingress_to_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }
    tags = {
      Name = "Allow-SSH-VARS"
    }
}

resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.test_variables.id]

    tags = {
      Name = "Terraform"
    }
}