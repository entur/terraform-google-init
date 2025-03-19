output "environment" {
  description = "Environment descriptor (i.e. 'dev', 'tst', 'prd')."
  value       = var.environment
}

output "labels" {
  description = "Labels for use on managed resources (i.e. Kubernetes resources)."
  value       = local.labels
}

output "app" {
  description = "A map containing essentials about the application (id', 'name', 'project_id', 'project_number', 'owner')."
  value       = local.app
}

output "kubernetes" {
  description = "A map containing essentials about available Kubernetes cluster(s) ('project_id', 'namespace')."
  value       = local.kubernetes
}

output "networks" {
  description = "A map containing essentials about available network(s) ('project_id', 'vpc_name', 'vpc_id')."
  value       = local.networks
}

output "service_accounts" {
  description = "A map containing essentials about application and project service account(s)."
  value       = local.service_accounts
}

output "is_production" {
  description = "Describes whether the environment in use is a production environment."
  value       = local.is_production
}
