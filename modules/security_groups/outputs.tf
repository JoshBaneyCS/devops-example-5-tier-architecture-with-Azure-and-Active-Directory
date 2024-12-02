output "ad_sg_id" {
  description = "Active Directory Security Group ID"
  value       = azurerm_network_security_group.ad_sg.id
}

output "database_sg_id" {
  description = "Database Security Group ID"
  value       = azurerm_network_security_group.database_sg.id
}

output "web_sg_id" {
  description = "Web Tier Security Group ID"
  value       = azurerm_network_security_group.web_sg.id
}

output "app_sg_id" {
  description = "App Tier Security Group ID"
  value       = azurerm_network_security_group.app_sg.id
}

output "compute_sg_id" {
  description = "Compute Tier Security Group ID"
  value       = azurerm_network_security_group.compute_sg.id
}
