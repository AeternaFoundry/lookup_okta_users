data "okta_users" "users_lookup" {
  for_each = var.users_lookup

  compound_search_operator = each.value.compound_search_operator
  delay_read_seconds       = each.value.delay_read_seconds
  group_id                 = each.value.group_id
  include_groups           = each.value.include_groups
  include_roles            = each.value.include_roles

  dynamic "search" {
    for_each = each.value.search != null ? each.value.search : []
    content {
      comparison = search.value.comparison
      expression = search.value.expression
      name       = search.value.name
      value      = search.value.value
    }
  }
}

