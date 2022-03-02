
#### Peering Network ####

resource "azurerm_virtual_network_peering" "peering-a" {
  count                        = var.count
  name                         = "cl-peering-${var.app-name}-${count.index}"
  resource_group_name          = var.resource_group_name
  virtual_network_name         = var.address_spaces
  remote_virtual_network_id    = [element(split(",", var.vnet_remote), count.index)]
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}






