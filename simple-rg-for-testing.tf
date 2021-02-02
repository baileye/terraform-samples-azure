variable "rg_name" {
  description = "resource group name."
  default = "testfeb2"
}

variable "rg_location" {
  description = "resource group location."
  default = "westeurope"
}

provider "azurerm" {
    version = "~>2.12.0"

    features {}
}

resource "azurerm_resource_group" "rg" {
    name     = var.rg_name
    location = var.rg_location
}
