resource "azurerm_subnet" "subnet_block" {
  for_each = var.sub-nets
  name=each.value.name
  resource_group_name = each.value.resource_group_name
  address_prefixes = each.value.address_prefixes
  virtual_network_name = each.value.virtual_network_name
}