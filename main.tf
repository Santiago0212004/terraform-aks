provider "azurerm" {
  features {}
  subscription_id = "notreal-notreal-notreal-notreal-notreal"
}

resource "azurerm_resource_group" "labs_plataformas_rg" {
  name     = "labs-plataformas-resources"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "labs_plataformas_aks" {
  name                = "labs-plataformas-aks1"
  location            = azurerm_resource_group.labs_plataformas_rg.location
  resource_group_name = azurerm_resource_group.labs_plataformas_rg.name
  dns_prefix          = "labs-plataformas-aks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Lab-Plataformas-Production"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.labs_plataformas_aks.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.labs_plataformas_aks.kube_config_raw
  sensitive = true
}