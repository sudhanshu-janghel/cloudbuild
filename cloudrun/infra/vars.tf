locals {
  env = substr(var.project_name, -3, 3)
}

variable "region" {
  type        = string
  description = "The region in which resources will be applied."
}

variable "org_name" {
  type        = string
  description = "The name of the org."
  default     = "dcsgva"
}

variable "org_id" {
  type        = string
  description = "The ID of the org."
}

variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "folder_id" {
  type        = string
  description = "ID of the folder in which to create the project"
}

variable "pipeline_type" {
  type        = string
  description = "Type of build pipeline to create: ci, cd or release"
}

variable "create_vpc" {
  type        = bool
  description = "Type of build pipeline to create: ci, cd or release"
  default     = false
}

variable "enable_egress" {
  default = "true"
}

variable "billing_account" {
  type        = string
  description = "The billing account ID"
}

variable "ignored_files" {
  type        = list
  description = "List of file patterns to exclude from the pipeline triggers"
  default     = []
}
