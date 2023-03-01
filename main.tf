locals {
  location_map_codes = {
    "France Central" = "00"
    "France South"   = "01"
    "West Europe"    = "10"
    "North Europe"   = "11"
  }

  environment_map_codes = {
    "lab" = "l"
    "dev" = "d"
    "int" = "i"
    "tst" = "t"
    "pre" = "r"
    "prd" = "p"
  }


  location_code_safe = lower(local.location_map_codes[var.location])
  environment_safe   = lower(var.environment)

  area_safe             = substr(md5(format("%s-%s", var.area, local.location_code_safe)), 0, 4)
  environment_code_safe = lower(local.environment_map_codes[local.environment_safe])
  project_safe          = lower(var.project)
}
