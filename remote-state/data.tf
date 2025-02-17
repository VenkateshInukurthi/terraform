data "aws_ami" "joindevops_name" {
    owners = []
    most_recent = true

    filter {
      name = "name"
      values = ["RHEL-9-DevOps-Practice"]
    }
    filter {
      name = "root-device-type"
      values = ["ebs"]
    }
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
  
}