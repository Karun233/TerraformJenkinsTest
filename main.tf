terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e7103323-a982-4c91-bb5f-7960f7fa8760"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG1"
    storage_account_name = "jenkinsstatekarun"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG3"
  location = "westeurope"
}



