resource "azurerm_resource_group" "TestRG" {
  # name     = "RG_Terraform"
  # location = "West Europe"
  name     = var.RGName
  location = var.RGLocation
}

resource "azurerm_storage_account" "tststrg" {
  name                     = var.storagename
  location                 = azurerm_resource_group.TestRG.location
  resource_group_name      = azurerm_resource_group.TestRG.name
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags                     = var.TagsCollection
}

resource "azurerm_storage_container" "tstcont" {
  count                 = 4
  name                  = "${var.containername}${count.index}"
  storage_account_name  = azurerm_storage_account.tststrg.name
  container_access_type = "private"

}