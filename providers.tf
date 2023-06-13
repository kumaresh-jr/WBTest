terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.60.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "wbtest-rg"
    storage_account_name = "wbtest1234"
    container_name       = "test-container"
    key                  = "prod.terraform.tfstate"
  }
}
provider "azurerm" {
  # Configuration options
  features {}
}
