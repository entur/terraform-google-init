variable "gcp_project" {
  description = "The GCP project ID"
  type        = string
}

variable "kubernetes_namespace" {
  description = "The Kubernetes namespace in which to create a secret"
  default     = "rtd"
}

variable "labels" {
  description = "Labels used in all resources"
  type        = map(string)
  default = {
    manager = "terraform"
    team    = "myteam"
    slack   = "random"
    app     = "exampleapp"
  }
}