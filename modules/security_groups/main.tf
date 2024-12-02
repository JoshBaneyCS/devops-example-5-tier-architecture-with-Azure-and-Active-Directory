resource "azurerm_network_security_group" "ad_sg" {
  name                = "ad-security-group"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "Allow-AD"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["389", "636", "3268", "3269"]
    source_address_prefix      = "10.0.0.0/16" # Adjust as per your internal subnet
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "database_sg" {
  name                = "database-security-group"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "Allow-App-Tier"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["1433", "27017"] # SQL and MongoDB
    source_address_prefix      = "10.0.1.0/24" # App tier subnet
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "web_sg" {
  name                = "web-security-group"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "Allow-HTTP-HTTPS"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow
