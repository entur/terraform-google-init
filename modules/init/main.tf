locals {
  app = {
    id         = var.app_id
    name       = data.google_projects.app_projects.projects[0].labels.app
    owner      = data.google_projects.app_projects.projects[0].labels.owner
    project_id = data.google_projects.app_projects.projects[0].project_id
  }

  kubernetes = {
    project_id = data.google_projects.kubernetes_projects.projects[0].project_id
  }

  networks = {
    project_id = data.google_projects.network_projects.projects[0].project_id
    vpc_name   = data.google_compute_network.main_network_project_vpc.name
    vpc_id     = data.google_compute_network.main_network_project_vpc.id
  }

  service_accounts = {
    default = data.google_service_account.application_default
  }

  is_production = try(data.google_projects.app_projects.projects[0].labels.is_prod, "false")
}

data "google_projects" "app_projects" {
  filter = "lifecycleState:ACTIVE labels.purpose:app-project labels.app_id:${var.app_id} labels.environment:${var.environment}"
}

data "google_projects" "kubernetes_projects" {
  filter = "lifecycleState:ACTIVE labels.kubernetes:true labels.environment:${var.environment}"
}

# TODO: replace app_short and handle generation shifts
data "google_projects" "network_projects" {
  filter = "lifecycleState:ACTIVE labels.app_short:network labels.environment:${var.environment}"
}

data "google_service_account" "application_default" {
  account_id = "application@${local.app.project_id}.iam.gserviceaccount.com"
}

data "google_compute_network" "main_network_project_vpc" {
  name    = "vpc-${var.environment}-001"
  project = data.google_projects.network_projects.projects[0].project_id
}
