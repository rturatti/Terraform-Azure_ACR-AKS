resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.projeto}-aks"    # Name of the AKS cluster
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.projeto}-aks"

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_DS2_v2"
    zones      = [1, 2, 3]
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}