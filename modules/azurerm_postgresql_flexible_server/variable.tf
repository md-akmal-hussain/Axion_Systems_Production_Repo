variable "psql" {
  description = "Azure PostgreSQL Flexible Server configuration."

  type = map(object({
    psql_name                    = string
    resource_group_name          = string
    location                     = string
    version                      = string
    storage_mb                   = number
    storage_tier                 = string
    sku_name                     = string
    public_network_access_enabled = bool
  }))
}