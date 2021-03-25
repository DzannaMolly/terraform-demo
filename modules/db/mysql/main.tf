resource "azurerm_sql_server" "sqldb" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.RG_name1.name
  location                     = azurerm_resource_group.web_server_location
  version                      = "12.0"
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password
  endpoint = var.endpoint.name
}

resource "azurerm_sql_database" "db" {
  name                = "terraform-sqldatabase20-ana"
  resource_group_name = azurerm_resource_group.web_server_rg.name
  location            = azurerm_resource_group.web_server_location
  server_name         = azurerm_sql_server.sqldb.name
}




# resource "azurerm_mysql_server" "demo" {
#   name                = "mysql-training"
#   location            = var.location
#   resource_group_name = azurerm_resource_group.My_ResourceGroup1.name

#   sku {
#     name     = "GP_Gen5_2"
#     capacity = 2
#     tier     = "GeneralPurpose"
#     family   = "Gen5"
#   }

#   storage_profile {
#     storage_mb            = 5120
#     backup_retention_days = 7
#     geo_redundant_backup  = "Disabled"
#   }

#   administrator_login          = "mysqladmin"
#   administrator_login_password = "Root1"
#   version                      = "5.7"
#   ssl_enforcement              = "Enabled"
# }

# resource "azurerm_mysql_database" "training" {
#   name                = "demodb-ana"
#   resource_group_name = azurerm_resource_group.My_ResourceGroup1.name
#   server_name         = azurerm_mysql_server.demo.name
#   charset             = "utf8"
#   collation           = "utf8_unicode_ci"
# }

# resource "azurerm_mysql_virtual_network_rule" "demo-database-subnet-vnet-rule" {
#   name                = "mysql-vnet-rule"
#   resource_group_name = azurerm_resource_group.My_ResourceGroup1.name
#   server_name         = azurerm_mysql_server.demo.name
#   subnet_id           = azurerm_subnet.web_server_subnet1.id
# }

# # resource "azurerm_mysql_virtual_network_rule" "demo-subnet-vnet-rule" {
# #   name                = "mysql-demo-subnet-vnet-rule"
# #   resource_group_name = azurerm_resource_group.demo.name
# #   server_name         = azurerm_mysql_server.demo.name
# #   subnet_id           = azurerm_subnet.demo-internal-1.id
# # }

# # resource "azurerm_mysql_firewall_rule" "demo-allow-demo-instance" {
# #   name                = "mysql-demo-instance"
# #   resource_group_name = azurerm_resource_group.My_ResourceGroup1.name
# #   server_name         = azurerm_mysql_server.demo.name
# # #   start_ip_address    = azurerm_network_interface.web_server_nic.private_ip_address
# # #   end_ip_address      = azurerm_network_interface.web_server_nic.private_ip_address
# # }