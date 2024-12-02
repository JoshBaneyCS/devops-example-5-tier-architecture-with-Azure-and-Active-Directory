output "web_public_ip" {
  value = azurerm_kubernetes_cluster.web_tier.kube_admin_config
}
