variable "users_lookup" {
  description = <<EOT
Map of users_lookup, attributes below
Optional:
    - compound_search_operator
    - delay_read_seconds
    - group_id
    - include_groups
    - include_roles
    - search (block):
        - comparison (optional)
        - expression (optional)
        - name (optional)
        - value (optional)
EOT

  type = map(object({
    compound_search_operator = optional(string)
    delay_read_seconds       = optional(string)
    group_id                 = optional(string)
    include_groups           = optional(bool)
    include_roles            = optional(bool)
    search = optional(list(object({
      comparison = optional(string)
      expression = optional(string)
      name       = optional(string)
      value      = optional(string)
    })))
  }))
}

