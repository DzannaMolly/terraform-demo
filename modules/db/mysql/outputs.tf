output "sql_server_name1" {
    value = azurerm_sql_server.sqldb.name
}

output "sql_database_name1" {
  value = azurerm_sql_server.db.name
}

output "sql_admin_login1" {
  value = azurerm_sql_server.sqldb.administrator_login
}

output "sql_admin_password1" {
value = azurerm_sql_server.sqldb.administrator_login_password
}