resource "azurerm_container_registry" "creglepalkterraformacrtest" {
  name                = "${var.container_registry_name_prefix}eglepalkterraformacrtest"
  resource_group_name = azurerm_resource_group.rg-egle-palk-terraform-test.name
  location            = var.default_location
  sku                 = "Basic"
  admin_enabled       = false
  tags                = var.tags
}
