# Init module for Google Cloud Platform

A module for provisioning common access privileges and secrets for an application.

* A service account
* A service account key
* A Kubernetes secret (default, but optional)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| kubernetes_create_secret | Whether to store the key in a secret in Kubernetes (optional) | string | true | no |
| kubernetes_namespace | The Kubernetes namespace resources will be created in | string | n/a | no |
| kubernetes_secret_name | A custom secret name to use instead of the default generated one (optional) | string | A generated name | no |
| labels | The labels you wish to decorate resources with | map(string) | n/a | yes |
| project_id | The GCP project ID | string | n/a | yes |
| service_account_id | A custom service account ID to use instead of the default generated one (optional) | string | A generated ID | no |

## Outputs

| Name | Description |
|------|-------------|
| service_account_key | The service account key |
| service_account_id | The service account ID |
| service_account_email | The service account e-mail address |

