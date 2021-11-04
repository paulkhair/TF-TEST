resource "azurerm_virtual_network" "vnt-dev1" {
  name                = "${var.vnt_name}"
  address_space       = var.dev_virtual_network_address_space
  location            = azurerm_resource_group.rg-dev1.location
  resource_group_name = azurerm_resource_group.rg-dev1.name
  tags                = local.Common_tags
  
}


resource "azurerm_subnet" "subnet-dev-db" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.dev_db_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = var.dev_db_subnet_address_space
}

resource "azurerm_subnet" "subnet-dev-web" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.dev_web_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = var.dev_web_subnet_address_space
}
resource "azurerm_subnet" "subnet-dev-pe" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.dev_pe_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = var.dev_pe_subnet_address_space
}

resource "azurerm_subnet" "subnet-dev-gw" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.dev_gw_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = var.dev_gw_subnet_address_space
}
resource "azurerm_subnet" "subnet-uat-db" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.uat_db_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = var.uat_db_subnet_address_space
}

resource "azurerm_subnet" "subnet-uat-web" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.uat_web_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = var.uat_web_subnet_address_space
}
resource "azurerm_subnet" "subnet-uat-pe" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.uat_pe_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = var.uat_pe_subnet_address_space
}

resource "azurerm_subnet" "subnet-uat-gw" {
  name                 = "azurerm_virtual_network.vnt-dev1.name-${var.uat_gw_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-dev1.name
  virtual_network_name = azurerm_virtual_network.vnt-dev1.name
  address_prefixes     = var.uat_gw_subnet_address_space
}

resource "azurerm_virtual_network_peering" "example-1" {
  name                      = "azvntsoan0002-peer-azvnthub002"
  resource_group_name       = azurerm_resource_group.rg-dev1.name
  virtual_network_name      = azurerm_virtual_network.vnt-dev1.name
  remote_virtual_network_id = var.hub_virtual_network_id
}
