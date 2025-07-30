output "dev_instance_ips" {
  value = module.dev_app.public_ips
}

output "stg_instance_ips" {
  value = module.stg_app.public_ips
}

output "prd_instance_ips" {
  value = module.prd_app.public_ips
}