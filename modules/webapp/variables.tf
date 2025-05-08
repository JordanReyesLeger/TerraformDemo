// Web App module variables file

variable "webapp_name" {
  description = "Name of the Web Apps"
  type        = string
}

variable "location" {
  description = "Azure region for the Web Apps"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "app_service_plan_id" {
  description = "ID of the App Service Plan"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the Web Apps"
  type        = map(string)
}