variable "identity_domains_group_lookup" {
  description = <<EOT
Map of identity_domains_group_lookup, attributes below
Required:
    - group_id
    - idcs_endpoint
Optional:
    - attribute_sets
    - attributes
    - authorization
    - resource_type_schema_version
EOT

  type = map(object({
    group_id                     = string
    idcs_endpoint                = string
    attribute_sets               = optional(list(string))
    attributes                   = optional(string)
    authorization                = optional(string)
    resource_type_schema_version = optional(string)
  }))
}

