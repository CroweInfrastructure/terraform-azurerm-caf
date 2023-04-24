variable "global_settings" {}
variable "client_config" {}
variable "resource_group_name" {}
variable "location" {}
variable "virtual_machine_scale_sets" {
  default = {}
}
variable "tags" {
  description = "(Required) map of tags for the deployment"
}
variable "settings" {
  default     = {}
  description = "Configuration object for the monitor autoscale setting resource"
}
variable "base_tags" {
  default = {}
}
variable "remote_objects" {
  default = {}
}