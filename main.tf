data "gitlab_project_ids" "project_ids_lookup" {
  for_each = var.project_ids_lookup

  project = each.value.project
}

