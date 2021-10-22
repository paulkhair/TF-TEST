resource "azurerm_resource_group" "tf-dev-rg" {
    location = "westus"
  count = 2
  name = "dev-rg-${count.index}"
  tags = {
    "environment" = "Dev"
    "Cost Center" = "IND"
  }
}