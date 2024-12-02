output "active_directory_name" {
  description = "Name of the Active Directory Domain Service"
  value       = module.active_directory.name
}

output "user_db_connection_string" {
  description = "Connection string for the user database"
  value       = module.database.user_db_connection_string
}

output "web_service_db_account_endpoint" {
  description = "Endpoint of the web service database account"
  value       = module.database.web_service_db_endpoint
}

output "web_tier_public_ip" {
  description = "Public IP address of the web tier Kubernetes cluster"
  value       = module.web_tier.web_public_ip
}

output "app_tier_load_balancer_ip" {
  description = "Load balancer IP address of the app tier Kubernetes cluster"
  value       = module.app_tier.app_load_balancer_ip
}

output "compute_vm_name" {
  description = "Name of the compute virtual machine"
  value       = module.compute.vm_name
}

output "security_groups_ids" {
  description = "List of security group IDs"
  value = {
    ad_sg       = module.security_groups.ad_sg_id
    database_sg = module.security_groups.database_sg_id
    web_sg      = module.security_groups.web_sg_id
    app_sg      = module.security_groups.app_sg_id
    compute_sg  = module.security_groups.compute_sg_id
  }
}
