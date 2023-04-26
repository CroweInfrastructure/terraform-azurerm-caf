variable "global_settings" {}
variable "client_config" {}
variable "resource_group_name" {}
variable "location" {}
variable "virtual_machine_scale_sets" {
  default = {}
}
variable "settings" {
  default     = {}
  description = "Configuration object for the monitor autoscale setting resource"
}
variable "tags" {
  description = "(Required) map of tags for the deployment"
}
variable "base_tags" {
  description = "Base tags for the resource to be inherited from the resource group."
}
variable "remote_objects" {
  default = {}
}