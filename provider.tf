terraform {
  required_version = ">=1.0.3"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.8.0"
     }
  }
  /*
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "~> 3.1.0"
     }
     
  }
  */
}

provider azurerm {
  features {
    
  }
}

resource "azurerm_resource_group" "tf-dev-rg" {
    location = "eastus"
  count = 2
  name = "dev-rg-${count.index}"
  tags = {
    "environment" = "Dev"
    "Cost Center" = "IND"
  }
}

