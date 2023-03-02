# Azure Aware Naming

[![Build Status](https://dev.azure.com/weareretail/Tooling/_apis/build/status/mod_azu_naming?repoName=mod_azu_naming&branchName=master)](https://dev.azure.com/weareretail/Tooling/_build/latest?definitionId=2&repoName=mod_azu_naming&branchName=master)[![Unilicence](https://img.shields.io/badge/licence-The%20Unilicence-green)](LICENCE)

Common Azure Terraform module to normalize naming on ressources.

# Usage

```hcl
module "aware_naming" {
  source = "weareretail/naming/azurerm"

  location          = "France Central"
  environment       = "DEV"
  project           = "PRJ"
  area              = "master"

}

```

#### Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 0.15.5 |

#### Inputs

| Name                                                               | Description                                      | Type     | Default            | Required |
| ------------------------------------------------------------------ | ------------------------------------------------ | -------- | ------------------ | :------: |
| <a name="input_area"></a> [area](#input_area)                      | Project index (branch name, slot name, ....)     | `string` | n/a                |   yes    |
| <a name="input_project"></a> [project](#input_project)             | Code name of the project. Must have 3 letters.   | `string` | n/a                |   yes    |
| <a name="input_environment"></a> [environment](#input_environment) | Environment code (LAB, DEV, INT, TST, PRE, PRD). | `string` | `"DEV"`            |    no    |
| <a name="input_location"></a> [location](#input_location)          | Azure region were resources are deployed         | `string` | `"France Central"` |    no    |

#### Outputs

| Name                                                                                                     | Description                                  |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------- |
| <a name="output_resource_group_prefixes"></a> [resource_group_prefixes](#output_resource_group_prefixes) | Resource group name prefixes for CAF module. |
| <a name="output_resource_prefixes"></a> [resource_prefixes](#output_resource_prefixes)                   | Resource name prefixes for CAF module.       |

<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.5 |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_area"></a> [area](#input\_area) | Project index (branch name, slot name, ....) | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Code name of the project. Must have 3 letters. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment code (LAB, DEV, INT, TST, PRE, PRD). | `string` | `"DEV"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where resources are deployed | `string` | `"France Central"` | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_prefixes"></a> [resource\_group\_prefixes](#output\_resource\_group\_prefixes) | Resource group name prefixes for CAF module. |
| <a name="output_resource_prefixes"></a> [resource\_prefixes](#output\_resource\_prefixes) | Resource name prefixes for CAF module. |
<!-- END_TF_DOCS -->