data "azurerm_subnet" "testing" {
  name                 = "internal"
  virtual_network_name = "fortest-network"
  resource_group_name  = "raju-RG"
}

data "azurerm_public_ip" "testing" {
  name                = azurerm_public_ip.testing.name
  resource_group_name = azurerm_virtual_machine.fortest.resource_group_name