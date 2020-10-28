variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "kubernetes_namespace" {
  description = "The Kubernetes namespace in which to create a secret"
  type        = string
}

variable "kubernetes_create_secret" {
  description = "Whether to store the key in a secret in Kubernetes (optional)"
  type        = bool
  default     = true
}

variable "kubernetes_secret_name" {
  description = "A custom secret name to use instead of the default generated one (optional)"
  type        = string
  default     = ""
}

variable "labels" {
  description = "Labels used in all resources"
  type        = map(string)
  default = {}

  validation {
    condition     = length(var.labels.app) != 0
    error_message = "The label 'app' is required and missing or empty. Please specify the name of the application this resource belongs to (e.g. 'my-app')."
  }
  validation {
    condition     = length(var.labels.team) != 0
    error_message = "The label 'team' is required and missing or empty. Please specify the name of the team who maintains this resource (e.g. 'team-foo')."
  }
  validation {
    condition     = length(var.labels.slack) != 0
    error_message = "The label 'slack' is required and missing or empty. Please specify a valid Slack channel where maintainers can be reached (e.g. '#talk-team')."
  }
  validation {
    condition     = length(var.labels.manager) != 0
    error_message = "The label 'manager' is required and missing or empty. Please add a valid label which describes how this resource is managed (e.g. 'terraform')."
  }
}

variable "service_account_id" {
  description = "A custom service account id to use instead of the default generated one (optional)"
  type        = string
  default     = ""
}