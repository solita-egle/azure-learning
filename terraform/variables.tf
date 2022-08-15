variable "tag_owner" {
  type = string
  default = "egle.palk@solita.fi"
}

variable "tag_duedate" {
  type = string
  default = "01.10.2022"
}

variable "tags" {
  default = {
      Owner = "egle.palk@solita.fi"
      Duedate = "01.10.2022"
      }
  description = "Required Solita Azure tags"
}

variable "default_location" {
  default = "westeurope"
  description   = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default       = "rg"
  description   = "Prefix of the resource group name."
}

variable "container_registry_name_prefix" {
  default       = "cr"
  description   = "Prefix of the container registry name."
}

variable "azure_postgres_name_prefix" {
  default       = "psql"
  description   = "Prefix of the Azure Databases for Postgres name."
}



 