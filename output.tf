output "resource_group_prefixes" {
  value       = [local.environment_code_safe, lower(local.location_code_safe), lower(var.project), local.area_safe]
  description = "Resource group name prefixes for CAF module."
}

output "resource_prefixes" {
  value       = [local.environment_code_safe, lower(local.location_code_safe), lower(var.project), local.area_safe]
  description = "Resource name prefixes for CAF module."
}
