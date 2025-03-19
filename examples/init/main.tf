module "init" {
  source      = "github.com/entur/terraform-google-init//modules/init?ref=v1"
  app_id      = "tfmodules"
  environment = "dev"
}
