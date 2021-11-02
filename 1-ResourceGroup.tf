resource "azurerm_resource_group" "RG_DEV1" {
  location = var.location
  name = "${var.platform}" "${var.object}"
}