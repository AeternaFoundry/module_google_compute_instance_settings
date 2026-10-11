resource "google_compute_instance_settings" "compute_instance_settings" {
  for_each = var.compute_instance_settings

  zone            = each.value.zone
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "metadata" {
    for_each = each.value.metadata != null ? [each.value.metadata] : []
    content {
      items = metadata.value.items
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

