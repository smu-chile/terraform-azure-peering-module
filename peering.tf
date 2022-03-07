
#### Peering Network ####

resource "azurerm_virtual_network_peering" "peering-a" {
  count                        = 2
  name                         = "cl-peering-${var.app-name}-${count.index}"
  resource_group_name          = var.resource_group_name
  virtual_network_name         = var.vnet_network
  remote_virtual_network_id    = element(split(",", var.vnet_remote), count.index)
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}






