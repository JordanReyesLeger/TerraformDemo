// Main Terraform configuration file

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tsp-terraform"
    storage_account_name = "stjrlterraformstate"
    container_name       = "tsp-terraformdemo-container"
    key                  = "estado.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "rgtsp" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = data.azurerm_resource_group.rgtsp.name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "S1"
  tags                = var.tags
}

module "webapp_001" {
  source              = "./modules/webapp"
  app_service_plan_id = azurerm_service_plan.app_service_plan.id
  resource_group_name = data.azurerm_resource_group.rgtsp.name
  location            = var.location
  webapp_name         = var.webapp_names[0]
  tags                = var.tags
}

module "webapp_002" {
  source              = "./modules/webapp"
  app_service_plan_id = azurerm_service_plan.app_service_plan.id
  resource_group_name = data.azurerm_resource_group.rgtsp.name
  location            = var.location
  webapp_name         = var.webapp_names[1]
  tags                = var.tags
}


# resource "azurerm_container_registry" "acr" {
#   name                = var.acr_name
#   location            = var.location
#   resource_group_name = data.azurerm_resource_group.rgtsp.name
#   sku                 = "Basic"
#   tags                = var.tags
# }

# module "aks" {
#   source              = "./modules/aks"
#   name                = var.aks_name
#   location            = var.location
#   node_count          = var.aks_node_count
#   resource_group_name = var.resource_group_name
#   tags                = var.tags
# }





