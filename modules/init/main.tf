locals {
  app_name = substr(var.labels.app, 0, 25)
  environment = substr(var.kubernetes_namespace, 0, 4)
}

provider "google" {
  project = var.project_id
}

resource "google_service_account" "base" {
  account_id   = length(var.service_account_id) > 0 ? var.service_account_id : "${local.app_name}-${local.environment}"
  display_name = length(var.service_account_id) > 0 ? var.service_account_id : "${local.app_name}-${local.environment}"
  description  = "Service account for ${var.labels.app}"
  project      = var.project_id
}

resource "google_service_account_key" "base" {
  service_account_id = google_service_account.base.name
}

resource "kubernetes_secret" "base" {
  count = var.kubernetes_create_secret == true ? 1 : 0
  metadata {
    name      = length(var.kubernetes_secret_name) > 0 ? var.kubernetes_secret_name : "${local.app_name}-sa"
    namespace = var.kubernetes_namespace
    labels    = var.labels
  }
  data = {
    "credentials.json" = base64decode(google_service_account_key.base.private_key)
  }
}