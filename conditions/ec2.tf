resource "aws_security_group" "allow_ssh_conditions" {
    name = "allow_ssh_conditions"
    description = "Allowing port 22 for tcp protocol"

    egress {
        from_port = var.egress_from_to_port
        to_port = var.egress_from_to_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }

    ingress {
        from_port = var.ingress_from_to_port
        to_port = var.ingress_from_to_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }

    tags = {
      Name = "ALLOW_SSH"
    }
  
}

resource "aws_instance" "conditions_test_terraform" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_ssh_conditions.id]
    instance_type = var.Environement == "prod" ? var.instance_type : "t3.small"
    
    tags = {
      Name = "Conditions_test"
    }
  
}