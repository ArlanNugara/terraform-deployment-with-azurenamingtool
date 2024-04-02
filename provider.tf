terraform {
  required_version = "~> 1.7.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.97.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "PLACEHOLDER"
    storage_account_name = "PLACEHOLDER"
    container_name       = "tfstate"
    key                  = "PLACEHOLDER"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
