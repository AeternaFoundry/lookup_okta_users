output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.okta_users.users_lookup : k => v.id }
}
output "users_lookup_compound_search_operator" {
  description = "Map of compound_search_operator values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.okta_users.users_lookup : k => v.compound_search_operator }
}
output "users_lookup_delay_read_seconds" {
  description = "Map of delay_read_seconds values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.okta_users.users_lookup : k => v.delay_read_seconds }
}
output "users_lookup_group_id" {
  description = "Map of group_id values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.okta_users.users_lookup : k => v.group_id }
}
output "users_lookup_include_groups" {
  description = "Map of include_groups values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.okta_users.users_lookup : k => v.include_groups }
}
output "users_lookup_include_roles" {
  description = "Map of include_roles values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.okta_users.users_lookup : k => v.include_roles }
}
output "users_lookup_search" {
  description = "Map of search values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.okta_users.users_lookup : k => v.search }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.okta_users.users_lookup : k => v.users }
}

