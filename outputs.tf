output "project_ids_lookup_id" {
  description = "Map of id values across all project_ids_lookup, keyed the same as var.project_ids_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_ids.project_ids_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_ids_lookup_project" {
  description = "Map of project values across all project_ids_lookup, keyed the same as var.project_ids_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_project_ids.project_ids_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_ids_lookup_project_full_path" {
  description = "Map of project_full_path values across all project_ids_lookup, keyed the same as var.project_ids_lookup except keys with no project_full_path are omitted"
  value       = { for k, v in data.gitlab_project_ids.project_ids_lookup : k => v.project_full_path if v.project_full_path != null && length(v.project_full_path) > 0 }
}
output "project_ids_lookup_project_graphql_id" {
  description = "Map of project_graphql_id values across all project_ids_lookup, keyed the same as var.project_ids_lookup except keys with no project_graphql_id are omitted"
  value       = { for k, v in data.gitlab_project_ids.project_ids_lookup : k => v.project_graphql_id if v.project_graphql_id != null && length(v.project_graphql_id) > 0 }
}
output "project_ids_lookup_project_id" {
  description = "Map of project_id values across all project_ids_lookup, keyed the same as var.project_ids_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.gitlab_project_ids.project_ids_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

