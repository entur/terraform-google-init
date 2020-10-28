module "gcp-init" {
  source               = "../../modules/init"
  labels               = var.labels
  project_id           = var.gcp_project
  kubernetes_namespace = var.kubernetes_namespace
}