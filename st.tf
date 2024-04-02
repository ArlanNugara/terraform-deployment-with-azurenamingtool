// Resource Group Data
data "azurerm_resource_group" "rg" {
  name = var.rg
}

// Variables
variable "rg" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "name" {
  type = string
}

variable "st_account_kind" {
  type = string
}

variable "st_account_tier" {
  type = string
}

variable "st_replication_type" {
  type = string
}

variable "st_hns" {
  type = string
}

// Create the Storage Account
resource "azurerm_storage_account" "st" {
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_kind             = var.st_account_kind
  account_tier             = var.st_account_tier
  account_replication_type = var.st_replication_type
  is_hns_enabled           = var.st_hns
}