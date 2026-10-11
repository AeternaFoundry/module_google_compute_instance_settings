output "compute_instance_settings_id" {
  description = "Map of id values across all compute_instance_settings, keyed the same as var.compute_instance_settings except keys with no id are omitted"
  value       = { for k, v in google_compute_instance_settings.compute_instance_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_instance_settings_deletion_policy" {
  description = "Map of deletion_policy values across all compute_instance_settings, keyed the same as var.compute_instance_settings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_instance_settings.compute_instance_settings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_instance_settings_fingerprint" {
  description = "Map of fingerprint values across all compute_instance_settings, keyed the same as var.compute_instance_settings except keys with no fingerprint are omitted"
  value       = { for k, v in google_compute_instance_settings.compute_instance_settings : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "compute_instance_settings_metadata" {
  description = "Map of metadata values across all compute_instance_settings, keyed the same as var.compute_instance_settings except keys with no metadata are omitted"
  value       = { for k, v in google_compute_instance_settings.compute_instance_settings : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "compute_instance_settings_project" {
  description = "Map of project values across all compute_instance_settings, keyed the same as var.compute_instance_settings except keys with no project are omitted"
  value       = { for k, v in google_compute_instance_settings.compute_instance_settings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_instance_settings_zone" {
  description = "Map of zone values across all compute_instance_settings, keyed the same as var.compute_instance_settings except keys with no zone are omitted"
  value       = { for k, v in google_compute_instance_settings.compute_instance_settings : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

