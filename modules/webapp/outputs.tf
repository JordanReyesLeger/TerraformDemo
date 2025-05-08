// Agregar una salida para devolver los nombres de las aplicaciones web
output "webapp_name" {
  value = [azurerm_app_service.webapp.name]
}