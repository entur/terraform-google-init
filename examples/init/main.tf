module "init" {
  source      = "github.com/entur/terraform-google-init//modules/init?ref=v1.0.0"
  app_id      = "tfmodules"
  environment = "dev"
}
output "module" {
  # this output will show all the variables set by the init module, run a terraform plan to see the output
  value = module.init
}

output "project_id" {
  # use the output of the init module in your resources: ie project_id
  value = module.init.app.project_id
}
