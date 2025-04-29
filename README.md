# Terraform module(s) for initiating Entur's GCP modules

Modules that help you discover attributes needed to use Terraform modules for Google Cloud Platform.

## Main init module

A data-only module that fetches information about essential platform and application infrastructure. Produces a variety of useful outputs based on few inputs.

[Module](modules/init)

[Examples](examples/init)

## Getting started

### Example using the latest release

```hcl
module "init" {
  source = "github.com/entur/terraform-google-init//modules/init?ref=v1"
  ...
}
```

See the `README.md` under each module's subfolder for a list of supported inputs and outputs. For examples showing how they're implemented, check the [examples](examples) subfolder.

### Version constraints

You can control the version of a module dependency by adding `?ref=TAG` at the end of the source argument, as shown in the example above. You can find a list of available versions [here](https://github.com/entur/terraform-google-init/releases).
