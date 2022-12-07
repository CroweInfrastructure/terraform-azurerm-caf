data "azuread_application_published_app_ids" "well_known" {}

resource "azuread_application_password" "appp" {
  application_object_id = can(var.settings.azuread_application_object.key) == false ? try(var.settings.azuread_application_object.id, data.azuread_application_published_app_ids.well_known.result[var.settings.azuread_application.well_known_key]) : var.remote_objects.azuread_applications[try(var.settings.azuread_application_object.lz_key, var.client_config.landingzone_key)][var.settings.azuread_application_object.key].object_id
  display_name          = try(var.settings.display_name, null)
  start_date            = try(var.settings.start_date, null)
  end_date              = try(var.settings.end_date, null)
  end_date_relative     = try(var.settings.end_date_relative, null)
  rotate_when_changed   = try(var.settings.rotate_when_changed, null)
}
