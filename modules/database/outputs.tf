output "user_db_connection_string" {
  value = azurerm_sql_database.user_db.connection_string
}

output "web_service_db_endpoint" {
  value = azurerm_cosmosdb_account.web_service_db.endpoint
}
