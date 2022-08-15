resource "azurerm_postgresql_server" "psql-egle-palk-terraform-test" {
  name                = "${var.azure_postgres_name_prefix}-egle-palk-terraform-test"
  location            = var.default_location
  resource_group_name = azurerm_resource_group.rg-egle-palk-terraform-test.name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "psqladmin"
  administrator_login_password = "H@Sh1CoR3!"
  version                      = "11"
  ssl_enforcement_enabled      = true

  tags = var.tags
}

resource "azurerm_postgresql_database" "psql_db-egle-palk-terraform-test" {
  name                = "exampledb"
  resource_group_name = azurerm_resource_group.rg-egle-palk-terraform-test.name
  server_name         = azurerm_postgresql_server.psql-egle-palk-terraform-test.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}