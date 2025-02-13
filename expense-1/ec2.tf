resource "aws_instance" "expense" {
  count                  = length(var.instances)
  instance_type          = var.instances[count.index] == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.expense_test.id]
  ami                    = data.aws_ami.joindevops_ami.id
  tags = merge(
    var.common_tags,
    { Name = var.instances[count.index] }
  )
}
