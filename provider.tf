terraform {
  required_version = ">=1.0.3"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.8.0"
     }
    
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }      
   }

}

provider azurerm {
  features {
    
  }
}

provider "azurerm" {
    features {
    virtual_machine {
      # delete_os_disk_on_deletion = false
    }

    }
   
  alias = "azurerm-westus" 
}

provider "random" {
  
}