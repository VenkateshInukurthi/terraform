output "public_ip" {
    value = aws_instance.conditions_test_terraform.public_ip
    sensitive = false
    description = "Public ip od the instance created"
}