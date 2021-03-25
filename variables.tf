variable "web_server_address_prefix" {
  type = string
}

variable "web_server_name" {
  type = string
}

variable "Deployment_location1" {
  type = string
}

variable "RG_name1" {
  type = string
}

variable "rg_server_location1" {
  type = string
}

variable "rg_server_rg1" {
  type = string
}

variable "rg_server_prefix1" {
  type = string
}

variable "rg_server_address_space1" {
  type = string
}

variable "web_server_vnet1" {
  type = string
}

variable "rg_server_address_prefix1" {
  type = string
}

variable "private_ip_address_allocation" {
  type = string
}

variable "ip_name" {
  type = string
}

variable "subnet_id_ip" {
  type = string
}

variable "sql_server_name1" {
  type        = string
  description = "SQL Server instance name in Azure"
}

variable "sql_database_name1" {
  type        = string
  description = "SQL Database name in Azure"
}

variable "sql_admin_login1" {
  type        = string
  description = "SQL Server login name in Azure"
}

variable "sql_admin_password1" {
  type        = string
  description = "SQL Server password name in Azure"
}

variable "endpoint_name1" {
  type = string
}

variable "endpoint_location1" {
  type = string
}

variable "endpoint_virtual_network_name1" {
  type = string
}

variable "endpoint_address_prefixes1" {
  type = string
}

variable "enforce_private_link_endpoint_network_policies" {
  enforce_private_link_endpoint_network_policies = true
}
