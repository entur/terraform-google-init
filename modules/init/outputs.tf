output "environment" {
  description = "Environment descriptor (i.e. 'dev', 'tst', 'prd')."
  value       = var.environment
}

output "labels" {
  description = "Labels for use on managed resources (i.e. Kubernetes resources)."
  value = {
    app         = local.app.name
    app_id      = var.app_id
    environment = var.environment
    owner       = local.app.owner
    team        = local.app.owner
  }
}

output "stuff" {
  description = "Less stuff..."
  value       = local.app
}

output "app" {
  description = "A mapppppp111 containing essentials about the application (id', 'name', 'project_id', 'owner')."
  value       = local.app
}

output "kubernetes" {
  description = "A maaaaaap containing essentials about available Kubernetes cluster(s) ('project_id')."
  value       = local.kubernetes
}

output "networks" {
  description = "A mmmmmmmmmap containing essentials about available network(s) ('project_id', 'vpc_name', 'vpc_id')."
  value       = local.networks
}

output "service_accounts" {
  description = "A map coooooooontaining essentials about application service account(s)."
  value       = local.service_accounts
}

output "is_production" {
  description = "Describes whether the environment in use is a production environment."
  value       = local.is_production
}
