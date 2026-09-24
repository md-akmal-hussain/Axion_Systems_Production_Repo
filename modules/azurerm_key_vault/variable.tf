variable "key_vaults" {
  description = "Azure Key Vault configuration."

  type = map(object({
    key_vault_name              = string
    location                    = string
    resource_group_name         = string
    enabled_for_disk_encryption = bool
    soft_delete_retention_days  = number
    purge_protection_enabled    = bool
    key_vault_sku_name          = string
  }))
}

variable "key_vault_principal_id" {
  type        = string
  description = "Principal ID that can read Key Vault secrets."
}