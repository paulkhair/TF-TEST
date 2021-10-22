resource "azurerm_resource_group" "tf-dev-rg" {
    location = "westus"
  # count = 2
  #name = "dev-rg-${count.index}"
  name = "dev-rg-0"
  tags = {
    "environment" = "Dev"
    "Cost Center" = "West"
  }
}

resource "azurerm_resource_group" "tf-dev-rg1" {
    location = "westus"
  count = 2
  name = "dev-rg-${count.index}"
  #name = "dev-rg-0"
  tags = {
    "environment" = "UAT"
    "Cost Center" = "WEST"
  }
}