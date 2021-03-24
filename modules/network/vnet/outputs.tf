output "rg_server_location1" {
  value = azurerm_resource_group.My_ResourceGroup1.web_server_location
}

output "rg_server_rg1" {
  value = azurerm_resource_group.My_ResourceGroup1.web_server_rg
}

output "rg_server_prefix1" {
  value = azurerm_resource_group.My_ResourceGroup1.resource_prefix
}

output "rg_server_address_space1" {
  value = azurerm_resource_group.My_ResourceGroup1.web_server_address_space
}