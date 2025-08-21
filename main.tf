resource "azurerm_resource_group" "rg-block" {
  name     = "rg1"
  location = "east us"
}
resource "azurerm_resource_group" "rg-block2" {
  name     = "rg2"
  location = "east us"
}
resource "azurerm_storage_account" "storage-block" {
  name                     = "tabishstorageaccount"
  resource_group_name      = azurerm_resource_group.rg-block.name
  location                 = azurerm_resource_group.rg-block.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}