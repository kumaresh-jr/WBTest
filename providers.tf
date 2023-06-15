terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.60.0"
    }
  }
  #required_version = "=1.4.0"
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id=var.ARM_SUBSCRIPTION_ID
  client_id=var.ARM_CLIENT_ID
  client_secret=var.ARM_CLIENT_SECRET
  tenant_id=var.ARM_TENANT_ID
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