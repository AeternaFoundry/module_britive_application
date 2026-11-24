output "applications_id" {
  description = "Map of id values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.id }
}
output "applications_application_type" {
  description = "Map of application_type values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.application_type }
}
output "applications_catalog_app_id" {
  description = "Map of catalog_app_id values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.catalog_app_id }
}
output "applications_entity_root_environment_group_id" {
  description = "Map of entity_root_environment_group_id values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.entity_root_environment_group_id }
}
output "applications_properties" {
  description = "Map of properties values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.properties }
}
output "applications_scan_enabled" {
  description = "Map of scan_enabled values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.scan_enabled }
}
output "applications_sensitive_properties" {
  description = "Map of sensitive_properties values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.sensitive_properties }
  sensitive   = true
}
output "applications_task_service_id" {
  description = "Map of task_service_id values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.task_service_id }
}
output "applications_user_account_mappings" {
  description = "Map of user_account_mappings values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.user_account_mappings }
}
output "applications_version" {
  description = "Map of version values across all applications, keyed the same as var.applications"
  value       = { for k, v in britive_application.applications : k => v.version }
}

