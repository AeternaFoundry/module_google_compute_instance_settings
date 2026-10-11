variable "compute_instance_settings" {
  description = <<EOT
Map of compute_instance_settings, attributes below
Required:
    - zone
Optional:
    - deletion_policy
    - project
    - metadata (block):
        - items (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    zone            = string
    deletion_policy = optional(string)
    project         = optional(string)
    metadata = optional(object({
      items = optional(map(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

