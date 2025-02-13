resource "aws_route53_record" "locals_r53" {
    count = local.instances[count.index]
    zone_id = local.zone_id
    type = "A"
    ttl = 1
    name = local.instances[count.index] == "frontend" ? "${local.project}.${local.domain_name}" : "${local.instances[count.index]}.${local.domain_name}"
    
    records = local.instances[count.index] == "frontend" ? [aws_instance.locals_instance[count.index].public_ip] : [aws_instance.locals_instance[count.index].private_ip]
}