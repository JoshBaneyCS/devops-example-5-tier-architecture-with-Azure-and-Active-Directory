resource "azurerm_active_directory_domain_service" "aad_ds" {
  name                = "my-aadds-domain"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard"

  domain_name = "example.com"
}
