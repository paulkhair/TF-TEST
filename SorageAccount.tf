resource "random_string" "randomvalue" {
  lower = true
  length = "6"
  }
resource "azurerm_storage_account" "AZSTASOAN01" {
  name = "${random-string.randomvalue}.id" 
  location = "azurerm_resource_group.tf-dev-rg.location" 
  resource_group_name = "tf-dev-rg.name"
  account_replication_type = "LRS"

}