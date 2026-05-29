

resource "azurerm_kubernetes_cluster" "aks" {
  for_each = var.aks
  name                = each.value.aks_name
  location            = each.value.aks_location
  resource_group_name = each.value.aks_rgname
  dns_prefix          = each.value.aks_dnsprefix
  oidc_issuer_enabled = each.value.aks_oidc_issuer_enabled

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2ps_v6"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}
