data "azurerm_subnet" "subnet_block" {
  for_each = var.vms
  name = each.value.subnet_name
  resource_group_name = each.value.rg_name
  virtual_network_name = each.value.vnet_name
}
data "azurerm_public_ip" "nic-pip" {
  for_each = var.vms
  name = each.value.pip_name
  resource_group_name = each.value.rg_name
}