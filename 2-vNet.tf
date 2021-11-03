resource "azurerm_virtual_network" "vnt-dev1" {
  name                = "${var.platform} ${var.object[7]} ${var.application} ${var.environment} ${count.index}"
  address_space       = var.dev_virtual_network_address_space
  location            = azurerm_resource_group.rg-dev1.location
  resource_group_name = azurerm_resource_group.rg-dev1.name
  tags = local.Common_tags
}

# Create Subnet
resource "azurerm_subnet" "mysubnet" {
  #name                 = var.subnet_name
  name                 = "${azurerm_virtual_network.myvnet.name}-${var.subnet_name}"
  resource_group_name  = azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = ["10.3.0.0/24"]
}