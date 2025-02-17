locals {
  domain_name = "masterdevops.cloud"
  project = "expense"
  environment = "dev"
  zone_id = "Z03980142KYPX1BJQWBBZ"
  instance_type = local.environment == "prod" ? "t3.micro" : "t3.small"
}