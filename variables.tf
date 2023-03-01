variable "location" {
  type        = string
  description = "Azure region where resources are deployed"
  default     = "France Central"
}

variable "environment" {
  type        = string
  description = "Environment code (LAB, DEV, INT, TST, PRE, PRD)."
  default     = "DEV"
  validation {
    condition     = contains(["lab", "dev", "int", "tst", "pre", "prd"], lower(var.environment))
    error_message = "Must be LAB, DEV, INT, TST, PRE, PRD."
  }
}

variable "project" {
  type        = string
  description = "Code name of the project. Must have 3 letters."
  validation {
    condition     = length(var.project) == 3
    error_message = "Must be a 3 letters code."
  }
}

variable "area" {
  type        = string
  description = "Project index (branch name, slot name, ....)"
}
