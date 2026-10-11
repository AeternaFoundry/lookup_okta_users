output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_users.users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_lookup_compound_search_operator" {
  description = "Map of compound_search_operator values across all users_lookup, keyed the same as var.users_lookup except keys with no compound_search_operator are omitted"
  value       = { for k, v in data.okta_users.users_lookup : k => v.compound_search_operator if v.compound_search_operator != null && length(v.compound_search_operator) > 0 }
}
output "users_lookup_delay_read_seconds" {
  description = "Map of delay_read_seconds values across all users_lookup, keyed the same as var.users_lookup except keys with no delay_read_seconds are omitted"
  value       = { for k, v in data.okta_users.users_lookup : k => v.delay_read_seconds if v.delay_read_seconds != null && length(v.delay_read_seconds) > 0 }
}
output "users_lookup_group_id" {
  description = "Map of group_id values across all users_lookup, keyed the same as var.users_lookup except keys with no group_id are omitted"
  value       = { for k, v in data.okta_users.users_lookup : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "users_lookup_include_groups" {
  description = "Map of include_groups values across all users_lookup, keyed the same as var.users_lookup except keys with no include_groups are omitted"
  value       = { for k, v in data.okta_users.users_lookup : k => v.include_groups if v.include_groups != null }
}
output "users_lookup_include_roles" {
  description = "Map of include_roles values across all users_lookup, keyed the same as var.users_lookup except keys with no include_roles are omitted"
  value       = { for k, v in data.okta_users.users_lookup : k => v.include_roles if v.include_roles != null }
}
output "users_lookup_search" {
  description = "Map of search values across all users_lookup, keyed the same as var.users_lookup except keys with no search are omitted"
  value       = { for k, v in data.okta_users.users_lookup : k => v.search if v.search != null && length(v.search) > 0 }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup except keys with no users are omitted"
  value       = { for k, v in data.okta_users.users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}

