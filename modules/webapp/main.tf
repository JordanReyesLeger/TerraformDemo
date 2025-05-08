// Web App module main file

resource "azurerm_app_service" "webapp" {
  name                = var.webapp_name
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id
  tags                = var.tags

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }
}

