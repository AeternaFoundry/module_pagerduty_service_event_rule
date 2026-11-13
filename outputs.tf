output "service_event_rules_id" {
  description = "Map of id values across all service_event_rules, keyed the same as var.service_event_rules"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.id }
}
output "service_event_rules_actions" {
  description = "Map of actions values across all service_event_rules, keyed the same as var.service_event_rules"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => one(v.actions) }
}
output "service_event_rules_conditions" {
  description = "Map of conditions values across all service_event_rules, keyed the same as var.service_event_rules"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => one(v.conditions) }
}
output "service_event_rules_disabled" {
  description = "Map of disabled values across all service_event_rules, keyed the same as var.service_event_rules"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.disabled }
}
output "service_event_rules_position" {
  description = "Map of position values across all service_event_rules, keyed the same as var.service_event_rules"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.position }
}
output "service_event_rules_service" {
  description = "Map of service values across all service_event_rules, keyed the same as var.service_event_rules"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.service }
}
output "service_event_rules_time_frame" {
  description = "Map of time_frame values across all service_event_rules, keyed the same as var.service_event_rules"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => one(v.time_frame) }
}
output "service_event_rules_variable" {
  description = "Map of variable values across all service_event_rules, keyed the same as var.service_event_rules"
  value       = { for k, v in pagerduty_service_event_rule.service_event_rules : k => v.variable }
}

