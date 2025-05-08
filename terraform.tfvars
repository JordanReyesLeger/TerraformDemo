# Variables file for Terraform with Azure naming best practices

# Resource group name
resource_group_name = "rg-tsp-terraform"

# Location for resources
location = "westus"

# Storage account name (must be globally unique and between 3-24 characters)
storage_account_name = "sttspterraformdemo"

# AKS cluster name
aks_name = "tsp-jrlcluster-aks"

# AKS node count
aks_node_count = 1

# ACR name
acr_name = "acrtpsjrlregistry002"

# App Service Plan name
app_service_plan_name = "sp-tsp-terraformdemo01"

# Web App names
webapp_names = ["tspjrl-webapp001", "tspjrl-webapp002"]

container_name = "tsp-terraformdemo-container"

state_key = "estadodemo.tfstate"

# Tags for resources
tags = {
  environment = "desarrollo"
  project     = "Tsp-TerraformDemo"
}