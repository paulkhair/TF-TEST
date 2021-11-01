terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.83.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

variable "location" {
  description = "TF-config varialble for location"
  default = "west europe"
}


resource "azurerm_resource_group" "RG-TF1" {
  location = var.location
  name = "azrgpsoan0001"

  tags = {
    "Environment" = "DEV"
    "CostCenter" = ""
    "Role"= "App"
    "Application"= "SOA"
  }

  
}

resource "azurerm_storage_account" "STA-TF1" {
  account_replication_type = "LRS"
  account_tier = "Standard"
  location = azurerm_resource_group.RG-TF1.location
  name = "azstasoan0010"
  resource_group_name = azurerm_resource_group.RG-TF1.name
  allow_blob_public_access = false

}

resource "azurerm_storage_container" "name" {
    name = "tfstate"
    storage_account_name = azurerm_storage_account.STA-TF1.name
    container_access_type = "blob"  
}




resource "azurerm_private_endpoint" "PEP-TF1" {
  name                = "azurerm_storage_account.STA-TF1.name-pe"
  location            = azurerm_resource_group.RG-TF1.location
  resource_group_name = azurerm_resource_group.RG-TF1.name
  subnet_id           = azurerm_subnet.example.id
  /*

  private_service_connection {
    name                           = "${random_string.random.result}-privateserviceconnection"
    private_connection_resource_id = azurerm_mariadb_server.example.id
    subresource_names              = [ "mariadbServer" ]
    is_manual_connection           = false?*/
  }
}


/*

*/