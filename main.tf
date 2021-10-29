terraform {
  required_version = ">= 1.0.0"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0.0"
    }

  }
}

provider "azurerm" {
  features {

  }
}

provider "random" {
  alias = "random-string"
}

provider "azurerm" {
  alias = "azure-eastus"
}

resource "azurerm_resource_group" "azrsgsoan0001-rg1" {
  #count    = "3"

   for_each = {
    "dev" = "azrsgdevn001"
    "tst"= "azrsgtstn001"
    "uat"= "azrsguatn001"
    
  }

  location = "eastus"
  name = "azrsgsoan0001-${each.value}"
  tags = {
    "environment" = "${each.key}-new"
    "Costcenter"  = "India-new"
  }
  lifecycle {
    create_before_destroy = "true"

  }

}
/*
resource "azurerm_resource_group" "azrsgsoan0001-rg2" {
  count    = "1"
  location = "westus"
  name     = "azrsguatn0001-${count.index}"
  tags = {
    "environment" = "uat-new"
    "Costcenter"  = "India-new"
  }
  depends_on = [
    azurerm_resource_group.azrsgsoan0001-rg1
  ]
  lifecycle {
    create_before_destroy = "true"

  }

}
*/

