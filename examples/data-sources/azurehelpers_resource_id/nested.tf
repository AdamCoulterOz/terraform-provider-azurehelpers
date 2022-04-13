terraform {
  required_providers {
    azurehelpers = {
      source = "AdamCoulterOz/azurehelpers"
    }
  }
}

data "azurehelpers_resource_id" "subnet" {
	resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/mySubnet"
}

output "nested_name" {
  value = data.azurehelpers_resource_id.subnet.name
}
output "nested_provider_namespace" {
  value = data.azurehelpers_resource_id.subnet.provider_namespace
}
output "nested_resource_group_name" {
  value = data.azurehelpers_resource_id.subnet.resource_group_name
}
output "nested_subscription_id" {
  value = data.azurehelpers_resource_id.subnet.subscription_id
}
output "nested_resource_type" {
  value = data.azurehelpers_resource_id.subnet.resource_type
}
output "nested_full_resource_type" {
  value = data.azurehelpers_resource_id.subnet.full_resource_type
}
output "nested_parent_resources" {
  value = data.azurehelpers_resource_id.subnet.parent_resources
}