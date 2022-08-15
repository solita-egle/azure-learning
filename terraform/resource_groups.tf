resource "azurerm_resource_group" "rg-egle-palk-terraform-test" {
  name = "${var.resource_group_name_prefix}-egle-palk-terraform-test"
  location = var.default_location

  tags = var.tags
}