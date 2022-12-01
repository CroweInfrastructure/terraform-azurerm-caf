
resource "azuread_application_certificate" "appc" {
  application_object_id = can(var.settings.azuread_application_object.key) == false ? var.settings.azuread_application_object.id : var.remote_objects.azuread_applications[try(var.settings.azuread_application_object.lz_key, var.client_config.landingzone_key)][var.settings.azuread_application_object.key].application_id
  encoding              = try(var.settings.encoding, null)
  key_id                = can(var.settings.keyvault_certificate.key) == false ? try(var.settings.keyvault_certificate.id, null) : var.remote_objects.keyvault_certificates[try(var.settings.keyvault_certificate.lz_key, var.client_config.landingzone_key)][var.settings.keyvault_certificate.key].id
  start_date            = can(var.settings.keyvault_certificate.key) == false ? try(var.settings.start_date, null) : var.remote_objects.keyvault_certificates[try(var.settings.keyvault_certificate.lz_key, var.client_config.landingzone_key)][var.settings.keyvault_certificate.key].certificate_attribute[0].not_before
  end_date              = can(var.settings.keyvault_certificate.key) == false ? try(var.settings.end_date, null) : var.remote_objects.keyvault_certificates[try(var.settings.keyvault_certificate.lz_key, var.client_config.landingzone_key)][var.settings.keyvault_certificate.key].certificate_attribute[0].expires
  end_date_relative     = try(var.settings.end_date_relative, null)
  type                  = try(var.settings.type, null)
  value                 = can(var.settings.keyvault_certificate.key) == false ? var.settings.value : var.remote_objects.keyvault_certificates[try(var.settings.keyvault_certificate.lz_key, var.client_config.landingzone_key)][var.settings.keyvault_certificate.key].certificate_data
}
