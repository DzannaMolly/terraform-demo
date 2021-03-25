resource "azurerm_subnet" "endpoint" {
  name                 = "endpoint"
  # resource_group_name  = azurerm_resource_group.My_ResourceGroup1.name
  virtual_network_name = azurerm_virtual_network.web_server_vnet1.name
  address_prefixes     = ["10.0.2.0/24"]

  enforce_private_link_endpoint_network_policies = true
}