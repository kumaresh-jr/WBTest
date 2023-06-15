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
  alias = "dev"
  subscription_id=var.ARM_SUBSCRIPTION_ID
  client_id=var.ARM_CLIENT_ID
  client_secret=var.ARM_CLIENT_SECRET
  tenant_id=var.ARM_TENANT_ID
}

provider "azurerm" {
  # Configuration options
  features {}
  alias = "test"
  subscription_id="f8d36ac6-8710-46f6-ab84-55c39d56e78a"
  client_id="c66d9e18-be5c-4d3a-8cd6-b4fef47c8fbe" # verify with sai
  client_secret="Alz8Q~QkOvx_MnYpgWxj3k.~6S~NTRKg3Bywnays"
  tenant_id="cc443543-6b5d-4818-82fe-cdc98ebddc0f"
}