module "service" {
  source = "../../../modules/service"

  extra_configmaps = [
    {
      "strange-extra-file" : "base64fancy=="
      "strange-extra-file2" : "base64isfancyyetuglyiskeystore=="
    }
  ]

  deployment_overrides = {
    some : "other-other-value",
    truth : false,
  }

}

output "this" {
  value = module.service
}
