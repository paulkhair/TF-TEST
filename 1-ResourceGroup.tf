resource "azurerm_resource_group" "rg-dev1" {
  location = var.location
  name     = "${var.rgp_name} ${count.index}"
  count = "2"
    
  tags     = local.Common_tags
}

/*
resource "azurerm_resource_group" "rg-dev2" {
  location = var.location)
  name     = "${var.platform} ${var.object[1]} ${var.application} ${var.environment} ${count.index}"
  count    = 1
  tags     = local.Common_tags
}
*/
