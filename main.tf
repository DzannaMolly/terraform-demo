provider "azurerm" {

  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "anastorageterra1"
    resource_group_name  = "ana-Tfstate-RG"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

module "My_ResourceGroup1" {
  source   = ".//modules/resource_group"
  name     = var.RG_name1
  location = var.Deployment_location1
}

module "web_server_vnet1" {
  source              = ".//modules/network/vnet"
  name                = "${var.rg_server_prefix1}-vnet"
  location            = var.rg_server_location1
  resource_group_name = azurerm_resource_group.My_ResourceGroup1.name
  address_space       = [var.rg_server_address_space1]
}

module "web_server_subnet1" {
  source               = ".//modules/network/subnet"
  name                 = "${var.rg_server_prefix1}-subnet"
  resource_group_name  = azurerm_resource_group.My_ResourceGroup1.name
  address_prefix       = var.web_server_address_prefix
  virtual_network_name = azurerm_virtual_network.web_server_vnet1.name
}

module "web_server_subnet1" {
  source                        = ".//modules/network/nic"
  name                          = "${var.rg_server_prefix1}-nic"
  location                      = var.rg_server_location1
  resource_group_name           = azurerm_resource_group.My_ResourceGroup1.name
  name_ip                       = azurerm_resource_group.My_ResourceGroup1.ip_configuration.name
  subnet_id_ip                  = azurerm_resource_group.My_ResourceGroup1.ip_configuration.subnet_id
  private_ip_address_allocation = azurerm_resource_group.My_ResourceGroup1.ip_configuration.private_ip_address_allocation
}

#resource "azurerm_resource_group" "web_server_rg" {
#name     = var.web_server_rg
#location = var.web_server_location
#}








