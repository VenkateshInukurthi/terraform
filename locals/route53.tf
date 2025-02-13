resource "aws_route53_record" "locals_r53" {
    count = length(var.instances)
    zone_id = local.zone_id
    type = "A"
    ttl = 1
    name = var.instances[count.index] == "frontend" ? "${local.project}.${local.domain_name}" : "${var.instances[count.index]}.${local.domain_name}"
    
    records = var.instances[count.index] == "frontend" ? [aws_instance.locals_instance[count.index].public_ip] : [aws_instance.locals_instance[count.index].private_ip]
}