module "example" {
  # This is for local reference only; if you're using this module as a published
  # module from GitHub, the 'source' parameter must refer to it's public location.
  # See README.md for instructions.
  # source     = "github.com/entur/terraform-google-init//modules/init?ref=vVERSION"
  source      = "../../modules/init"
  app_id      = "tfmodules"
  environment = "dev"
  custom_labels = {
    foo = "bar"
  }
}

output "module" {
  value = module.example
}

output "project_id" {
  value = module.example.app.project_id
}
