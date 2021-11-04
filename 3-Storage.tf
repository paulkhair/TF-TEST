/*
resource "azurerm_storage_account" "sta-dev" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = azurerm_resource_group.RG-TF1.location
  name                     = "azstasoan0010"
  resource_group_name      = azurerm_resource_group.RG-TF1.name
  allow_blob_public_access = true


}

resource "azurerm_storage_container" "name" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.STA-TF1.name
  container_access_type = "blob"
}
*/