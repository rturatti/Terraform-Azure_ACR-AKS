resource "azurerm_container_registry" "acr" {
  name                = "${var.projeto}acr"    # Name of the ACR
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  sku = "Basic"
  admin_enabled = false
  tags = var.tags
}