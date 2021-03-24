output "rg_server_prefix1" {
  value = azurerm_resource_group.My_ResourceGroup1.resource_prefix
}

output "rg_server_location1" {
  value = azurerm_resource_group.My_ResourceGroup1.web_server_location
}

output "RG_name1" {
  value = azurerm_resource_group.My_ResourceGroup1.name
}

output "ip_name" {
  value = azurerm_resource_group.My_ResourceGroup1.ip_configuration.name
}

output "subnet_id_ip" {
  value = azurerm_resource_group.My_ResourceGroup1.ip_configuration.subnet_id
}

output "private_ip_address_allocation" {
  value = azurerm_resource_group.My_ResourceGroup1.ip_configuration.private_ip_address_allocation
}