terraform {
    backend "azurerm" {
    resource_group_name   = "swapnil"
    storage_account_name  = "swapnilbackend"         # Must be globally unique
    container_name        = "swapnilcontainer"
    key                   = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "dc907905-71d1-4a3a-a622-1f9f82fd1899"
}