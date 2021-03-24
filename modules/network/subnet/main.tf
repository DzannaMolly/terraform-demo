resource "azurerm_subnet" "web_server_subnet1" {
  name                 = "${var.resource_prefix}-subnet"
  resource_group_name  = azurerm_resource_group.web_server_rg.name
  virtual_network_name = azurerm_virtual_network.web_server_vnet1.name
  address_prefix       = var.web_server_address_prefix
}