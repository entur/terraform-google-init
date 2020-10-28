output "service_account_key" {
  value       = base64decode(google_service_account_key.base.private_key)
  description = "The service account key generated on creation"
  sensitive   = true
}

output "service_account_id" {
  value       = google_service_account.base.name
  description = "The service account ID"
}

output "service_account_email" {
  value       = google_service_account.base.email
  description = "The service account e-mail address"
}