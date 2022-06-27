variable "app_id" {
  description = "Application ID"
  type        = string

  validation {
    condition     = length(var.app_id) <= 10
    error_message = "The application ID should be no more than 10 characters."
  }
}

variable "environment" {
  description = "Environment descriptor (i.e. 'dev', 'tst', 'prd')."
  type        = string

  validation {
    condition     = length(var.environment) == 3
    error_message = "The environment descriptor should be a 3 character string (i.e. 'dev', 'tst', 'prd')."
  }
}
