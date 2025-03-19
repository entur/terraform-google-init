module "init" {
  source      = "github.com/entur/terraform-google-init//modules/init?ref=v1.0.0"
  app_id      = "tfmodules"
  environment = "dev"
  # Uncomment to add custom labels to the output labels (module.init.labels)
  # custom_labels = {
  #   foo = "bar"
  # }
}

# Show all the variables set by the init module, run a terraform plan to see all the outputs
output "module" {
  value = module.init
}

# PubSub topic example using output from the init module
resource "google_pubsub_topic" "example" {
  name    = "example-topic"
  project = module.init.app.project_id
  labels  = module.init.labels
}
