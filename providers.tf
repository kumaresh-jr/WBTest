terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.60.0"
    }
  }
    /*backend "azurerm" {
    resource_group_name  = "wbtest-rg"
    storage_account_name = "wbtest1234"
    container_name       = "test-container"
    key                  = "prod.terraform.tfstate"
  }*/
}
provider "azurerm" {
  # Configuration options
  features {}
 # subscription_id=var.ARM_SUBSCRIPTION_ID
 # client_id=var.ARM_CLIENT_ID
  #client_secret=var.ARM_CLIENT_SECRET
  #tenant_id=var.ARM_TENANT_ID
}


