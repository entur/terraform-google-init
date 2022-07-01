# Terraform module(s) for initiating Entur's GCP modules
Modules that help you discover attributes needed to use Terraform modules for Google Cloud Platform.

## Main init module
A data-only module that fetches information about essential platform and application infrastructure. Produces a variety of useful outputs based on few inputs.

[Module](modules/init)

[Examples](examples/init)

## Usage instructions

### Version constraints
You can control the version of a module dependency by adding `?ref=TAG` at the end of the source argument. This is highly recommended. You can find a list of available versions [here](https://github.com/entur/terraform-google-init/releases).

```
module "init" {
  source = "github.com/entur/terraform-google-init//modules/init?ref=vVERSION"
  ...
}
```

Dependency automation tools such as Renovate Bot will be able to discover new releases and suggest updates automatically.

#### Example

```
module "init" {
  source = "github.com/entur/terraform-google-init//modules/init?ref=v1.0.0"
  ...
}
```