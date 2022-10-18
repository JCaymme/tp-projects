resource "azurerm_container_registry" "acr" {
  name                  = "${var.name}-acr"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                   = "Basic"
  data_endpoint_enabled = false
  identity {
    type = "SystemAssigned"
  }
}