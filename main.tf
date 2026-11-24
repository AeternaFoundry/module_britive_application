resource "britive_application" "applications" {
  for_each = var.applications

  application_type = each.value.application_type
  scan_enabled     = each.value.scan_enabled
  version          = each.value.version

  dynamic "properties" {
    for_each = each.value.properties != null ? each.value.properties : []
    content {
      name  = properties.value.name
      value = properties.value.value
    }
  }

  dynamic "sensitive_properties" {
    for_each = each.value.sensitive_properties != null ? each.value.sensitive_properties : []
    content {
      name  = sensitive_properties.value.name
      value = sensitive_properties.value.value
    }
  }

  dynamic "user_account_mappings" {
    for_each = each.value.user_account_mappings != null ? each.value.user_account_mappings : []
    content {
      description = user_account_mappings.value.description
      name        = user_account_mappings.value.name
    }
  }
}

