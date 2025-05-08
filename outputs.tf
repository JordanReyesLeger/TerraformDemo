// Outputs file

output "resource_group_name" {
  description = "The name of the resource group"
  value       = var.resource_group_name
}

# output "aks_name" {
#   description = "The name of the AKS cluster"
#   value       = module.aks.name
# }

# output "acr_name" {
#   description = "The name of the Azure Container Registry"
#   value       = azurerm_container_registry.acr.name
# }

output "app_service_plan_name" {
  description = "The name of the App Service Plan"
  value       = azurerm_service_plan.app_service_plan.name
}

output "webapp_names" {
  description = "The names of the Web Apps"
  value       = module.webapp_001.webapp_name
}