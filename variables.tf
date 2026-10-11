variable "project_ids_lookup" {
  description = <<EOT
Map of project_ids_lookup, attributes below
Required:
    - project
EOT

  type = map(object({
    project = string
  }))
}

