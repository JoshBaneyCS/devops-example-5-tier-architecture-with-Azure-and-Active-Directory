resource "azurerm_mssql_server" "user_db_server" {
  name                = "user-db-server"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  version             = "12.0"
  administrator_login = "adminuser"
  administrator_password = "P@ssw0rd!"
}

resource "azurerm_sql_database" "user_db" {
  name                = "userdb"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mssql_server.user_db_server.name
  sku_name            = "S0"
}

resource "azurerm_cosmosdb_account" "web_service_db" {
  name                = "webservice-db-account"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  offer_type          = "Standard"
  kind                = "MongoDB"
}
