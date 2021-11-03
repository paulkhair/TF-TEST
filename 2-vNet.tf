resource "azurerm_virtual_network" "vnt-dev1" {
  name                = "${var.platform} ${var.object[7]} ${var.application} ${var.environment} ${count.index}"
  address_space       = var.dev_virtual_network_address_space
  location            = azurerm_resource_group.rg-dev1.location
  resource_group_name = azurerm_resource_group.rg-dev1.name
  tags = local.Common_tags
}


resource "azurerm_subnet" "db-subnet" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = ["172.19.99.0/24"]
}

resource "azurerm_subnet" "pe-subnet" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = ["172.19.100.0/24"]
}