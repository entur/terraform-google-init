# x-release-please-start-version

module "init" {
  # This is an example only; if you're adding this block to a live configuration,
  # make sure to use the latest release of the init module, found here:
  # https://github.com/entur/terraform-google-init/releases
  source      = "github.com/entur/terraform-google-init//modules/init?ref=v0.1.0"
  app_id      = "tfmodules"
  environment = "dev"
}

# x-release-please-end

output "module" {
  value = module.example
}
