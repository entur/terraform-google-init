provider "google" {}

module "example" {
  source      = "../../modules/init"
  app_id      = "potato"
  environment = "dev"
}

output "module" {
  value = module.example
}
