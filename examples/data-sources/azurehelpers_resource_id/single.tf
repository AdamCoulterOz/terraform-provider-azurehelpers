data "azurehelpers_resource_id" "log_analytics" {
  resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/myLogAnalyticsWorkspace"
}

output "single_name" {
  value = data.azurehelpers_resource_id.log_analytics.name
}
output "single_provider_namespace" {
  value = data.azurehelpers_resource_id.log_analytics.provider_namespace
}
output "single_resource_group_name" {
  value = data.azurehelpers_resource_id.log_analytics.resource_group_name
}
output "single_subscription_id" {
  value = data.azurehelpers_resource_id.log_analytics.subscription_id
}
output "single_resource_type" {
  value = data.azurehelpers_resource_id.log_analytics.resource_type
}
output "single_full_resource_type" {
  value = data.azurehelpers_resource_id.log_analytics.full_resource_type
}
output "single_parent_resources" {
  value = data.azurehelpers_resource_id.log_analytics.parent_resources
}