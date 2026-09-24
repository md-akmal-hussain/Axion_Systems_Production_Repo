variable "rgs" {}
variable "vnets" {}
variable "subnets" {}
variable "pips" {}
variable "vms" {}
variable "bsn" {}
variable "psql" {}
variable "vm_admin_usernames" {
  description = "Admin usernames for Linux VMs."
  type        = map(string)
  sensitive   = true
}

variable "vm_admin_passwords" {
  description = "Admin passwords for Linux VMs."
  type        = map(string)
  sensitive   = true
}

variable "postgres_admin_usernames" {
  description = "Administrator usernames for PostgreSQL Flexible Servers."
  type        = map(string)
  sensitive   = true
}

variable "postgres_admin_passwords" {
  description = "Administrator passwords for PostgreSQL Flexible Servers."
  type        = map(string)
  sensitive   = true
}

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
  description = "Object ID of the Azure DevOps service connection identity."
  type        = string
}

