resource "azurerm_app_service" "app_service" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
  
  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = var.APPINSIGHTS_INSTRUMENTATIONKEY
    APPINSIGHTS_PROFILERFEATURE_VERSION            = "1.0.0"
    APPINSIGHTS_SNAPSHOTFEATURE_VERSION            = "1.0.0"
    ApplicationInsightsAgent_EXTENSION_VERSION      = "enabled"
    DiagnosticServices_EXTENSION_VERSION            = "~3"
    InstrumentationEngine_EXTENSION_VERSION         = "disabled"
    SnapshotDebugger_EXTENSION_VERSION              = "disabled"
    XDT_MicrosoftApplicationInsights_BaseExtensions = "disabled"
    XDT_MicrosoftApplicationInsights_Mode           = "default"
    XDT_MicrosoftApplicationInsights_PreemptSdk     = "disabled"
  }   
  site_config {
    http2_enabled    = true
    linux_fx_version = "DOCKER|teste4t9al0b8fracr.azurecr.io/talentpool/latest"
    acr_use_managed_identity_credentials = true
   }
}
