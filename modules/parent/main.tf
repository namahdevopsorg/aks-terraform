module "rg" {
  source          = "../child/azurerm_resource_group"
  resource_groups = var.resource_groups

}
module "aks" {
    depends_on = [ module.rg ]
  source = "../child/azurerm_aks"
  aks    = var.aks
}