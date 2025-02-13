resource "aws_route53_record" "expense_r53" {
  count   = length(var.instances)
  type    = "A"
  ttl     = 1
  name    = var.instances[count.index] == "frontend" ? "${var.project}.${var.domain_name}" : "${var.instances[count.index]}.${var.domain_name}"
  zone_id = var.zone_id
  records = var.instances[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]

  allow_overwrite = true

}