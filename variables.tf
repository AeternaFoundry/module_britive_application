variable "applications" {
  description = <<EOT
Map of applications, attributes below
Required:
    - application_type
Optional:
    - scan_enabled
    - version
    - properties (block):
        - name (required)
        - value (required)
    - sensitive_properties (block):
        - name (required)
        - value (required)
    - user_account_mappings (block):
        - description (required)
        - name (required)
EOT

  type = map(object({
    application_type = string
    scan_enabled     = optional(bool)
    version          = optional(string)
    properties = optional(list(object({
      name  = string
      value = string
    })))
    sensitive_properties = optional(list(object({
      name  = string
      value = string
    })))
    user_account_mappings = optional(list(object({
      description = string
      name        = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.applications : (
        contains([for v in ["Snowflake", "Snowflake Standalone", "GCP", "GCP Standalone", "GCP WIF", "Google Workspace", "AWS", "AWS Standalone", "Azure", "Azure WIF", "Okta", "Britive", "Oracle WIF", "Kubernetes"] : lower(v)], lower(v.application_type))
      )
    ])
    error_message = "must be one of: \"Snowflake\", \"Snowflake Standalone\", \"GCP\", \"GCP Standalone\", \"GCP WIF\", \"Google Workspace\", \"AWS\", \"AWS Standalone\", \"Azure\", \"Azure WIF\", \"Okta\", \"Britive\", \"Oracle WIF\", \"Kubernetes\""
  }
}

