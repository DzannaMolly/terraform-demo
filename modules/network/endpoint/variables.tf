variable "name" {
  type = string
}

# variable "location" {
#   type = string
# }

variable "virtual_network_name" {
  type = string
}

variable "address_prefixes" {
  type = string
}

variable "enforce_private_link_endpoint_network_policies" {
  type = bool
}