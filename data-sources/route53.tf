resource "aws_route53_record" "expense_r53" {
    count = length(var.instances)
    type = "A"
    ttl = 1
    zone_id = var.zone_id
    name = var.instances[count.index] == "frontend" ? "${var.project}.${var.domain_name}" : "${var.instances[count.index]}.${var.domain_name}"

    records = var.instances[count.index] == "frontend" ? [aws_instance.data_sources[count.index].public_ip] : [aws_instance.data_sources[count.index].private_ip]

    allow_overwrite = true
     
}