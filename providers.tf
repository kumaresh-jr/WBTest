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
 
}
provider "azurerm" {
  # Configuration options
  features {}
  alias = "dev"

}