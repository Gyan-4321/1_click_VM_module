data "azurerm_subnet" "testing" {
  name                 = "internal"
  virtual_network_name = "fortest-network"
  resource_group_name  = "raju-RG"
}

data "azurerm_public_ip" "testing" {
  for_each = var.pipdata
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}