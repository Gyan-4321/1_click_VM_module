data "azurerm_network_interface" "testing" {
  for_each = var.nsgdata
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_subnet" "fortest" {
  for_each = var.subnetdata
  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_network_security_group" "testing" {
  for_each = nsgdata
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}

