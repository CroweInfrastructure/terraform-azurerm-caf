variable "settings" {}

variable "global_settings" {}

variable "location" {
  description = "(Required) Resource Location"
}

variable "resource_group_name" {
  description = "(Required) Resource group of the App Service"
}

variable "app_service_plan_id" {
}

variable "tags" {
  description = "(Required) map of tags for the deployment"
}

variable "name" {
  description = "(Required) Name of the App Service"
}


variable "storage_account_access_key" {
  default = null
}

variable "storage_account_name" {
  default = null
}

variable "identity" {
  default = null
}

variable "connection_strings" {
  default = {}
}

variable "app_settings" {
  default = null
}

variable "slots" {
  default = {}
}

variable "application_insight" {
  default = null
}

variable "base_tags" {}

variable "combined_objects" {
  default = {}
}

variable "client_config" {}

variable "dynamic_app_settings" {
  default = {}
}

variable "remote_objects" {
  default = null
}

###########################################################
### BEGIN CROWE_PBI_226389
###########################################################
variable "function_app_lifecycle_ignore_changes" {
  type = list(string)
  default = []
}
###########################################################
### END CROWE_PBI_226389
###########################################################