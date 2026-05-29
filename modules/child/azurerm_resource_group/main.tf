resource "azurerm_resource_group" "aksrg" {
  for_each = var.resource_groups

  name     = each.value.rgname
  location = each.value.rglocation
}
