output "instrumentation_key-out" {
  value = azurerm_application_insights.insights.instrumentation_key
}

output "app_id-out" {
  value = azurerm_application_insights.insights.app_id
}

output "workspaceid-out" {
  value = azurerm_log_analytics_workspace.workspace.id
}