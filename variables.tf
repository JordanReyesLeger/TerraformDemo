// Variables file

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account for remote state"
  type        = string
}

variable "container_name" {
  description = "Name of the container for remote state"
  type        = string
}

variable "state_key" {
  description = "Key for the Terraform state file"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "aks_node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "webapp_names" {
  description = "List of names for the Web Apps"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}