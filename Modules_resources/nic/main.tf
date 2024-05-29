resource "azurerm_network_interface" "fortest" {
  for_each = var.nic90
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  network_security_group_id = data.azurerm_network_security_group.testing.id
  

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.testing.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.testing[each.key].ip_address
    
  }
}

