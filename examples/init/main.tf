# ci: x-release-please-start-version

module "init" {
  source      = "github.com/entur/terraform-google-init//modules/init?ref=v0.3.0"
  app_id      = "tfmodules"
  environment = "dev"
}

# ci: x-release-please-end