output "service_event_rules_id" {
  description = "Map of id values across all service_event_rules, keyed the same as var.service_event_rules except keys with no id are omitted"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_event_rules_actions" {
  description = "Map of actions values across all service_event_rules, keyed the same as var.service_event_rules except keys with no actions are omitted"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => one(v.actions) if v.actions != null && length(v.actions) > 0 }
}
output "service_event_rules_conditions" {
  description = "Map of conditions values across all service_event_rules, keyed the same as var.service_event_rules except keys with no conditions are omitted"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => one(v.conditions) if v.conditions != null && length(v.conditions) > 0 }
}
output "service_event_rules_disabled" {
  description = "Map of disabled values across all service_event_rules, keyed the same as var.service_event_rules except keys with no disabled are omitted"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.disabled if v.disabled != null }
}
output "service_event_rules_position" {
  description = "Map of position values across all service_event_rules, keyed the same as var.service_event_rules except keys with no position are omitted"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.position if v.position != null }
}
output "service_event_rules_service" {
  description = "Map of service values across all service_event_rules, keyed the same as var.service_event_rules except keys with no service are omitted"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.service if v.service != null && length(v.service) > 0 }
}
output "service_event_rules_time_frame" {
  description = "Map of time_frame values across all service_event_rules, keyed the same as var.service_event_rules except keys with no time_frame are omitted"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => one(v.time_frame) if v.time_frame != null && length(v.time_frame) > 0 }
}
output "service_event_rules_variable" {
  description = "Map of variable values across all service_event_rules, keyed the same as var.service_event_rules except keys with no variable are omitted"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.variable if v.variable != null && length(v.variable) > 0 }
}

