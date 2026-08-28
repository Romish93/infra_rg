resource "azurerm_resource_group" "rg1_r" {
  for_each = {
    "rg1_rom"  = "eastus"
    "rg2_rom"  = "westus"
    "rg4_rom4" = "centralindia"
    "rg4_rom5" = "centralindia"
  }
  name     = each.key
  location = each.value
}