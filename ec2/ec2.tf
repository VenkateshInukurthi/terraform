resource "aws_security_group" "allow-ssh-tf" {
    name = "allow-ssh-tf"
    description = "Allowing port 22 for SSH transport"

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
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
    tags = {
      Name = "allow-ssh-tf"
    }
}

resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow-ssh-tf.id]
    tags = {
        Name = "terraform"
    }
}