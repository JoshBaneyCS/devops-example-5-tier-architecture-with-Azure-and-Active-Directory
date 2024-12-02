output "app_load_balancer_ip" {
  value = azurerm_kubernetes_cluster.app_tier.kube_admin_config
}
