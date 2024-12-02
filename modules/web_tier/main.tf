resource "azurerm_kubernetes_cluster" "web_tier" {
  name                = "web-cluster"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "webtier"

  default_node_pool {
    name       = "webnode"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "kubernetes_deployment" "web_app" {
  metadata {
    name      = "web-app"
    namespace = "default"
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "web"
      }
    }
    template {
      metadata {
        labels = {
          app = "web"
        }
      }
      spec {
        container {
          name  = "web-container"
          image = "nginx:latest"
          ports {
            container_port = 80
          }
        }
      }
    }
  }
}
