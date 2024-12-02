resource "azurerm_kubernetes_cluster" "app_tier" {
  name                = "app-cluster"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "apptier"

  default_node_pool {
    name       = "appnode"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "kubernetes_deployment" "app_service" {
  metadata {
    name      = "app-service"
    namespace = "default"
  }

  spec {
    replicas = 3
    selector {
      match_labels = {
        app = "backend"
      }
    }
    template {
      metadata {
        labels = {
          app = "backend"
        }
      }
      spec {
        container {
          name  = "backend-container"
          image = "my-backend-image:latest"
          ports {
            container_port = 8080
          }
        }
      }
    }
  }
}
