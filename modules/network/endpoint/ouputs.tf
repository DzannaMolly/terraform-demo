output "endpoint_name1" {
  value = var.name
}

# output "endpoint_location1" {
#   value = var.location
# }

output "endpoint_virtual_network_name1" {
  value = var.virtual_network_name
}

output "endpoint_address_prefixes1" {
  value = var.address_prefixes
}

output "enforce_private_link_endpoint_network_policies" {
  value = var.enforce_private_link_endpoint_network_policies == true
}