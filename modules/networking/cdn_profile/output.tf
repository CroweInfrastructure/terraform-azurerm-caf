output "id" {
  value       = azurerm_cdn_profile.cdn.id
  description = "The ID of the CDN Profile."
}
output "name" {
  value       = azurerm_cdn_profile.cdn.name
  description = "The name of the CDN Profile."
}

output "base_tags" {
  value       = var.base_tags
  description = "The tags which were inherited from the resource group"
}