resource "aws_r53_record" "expense_r53" {
    count = length(var.instances)
    zone_id = var.zone_id
    ttl = 1
    type = "A"
    name = var.instances[count.index] == "frontend" ? "expense.${var.domain_name}" : "${var.instances[count.index]}.${var.domain_name}"
    records = var.instances[count.index] == "frontend" ? [aws_instance.expense_instance[count.index].public_ip] : [aws_instance.expense_instance[count.index].private_ip]

    allow_overwrite = true
}