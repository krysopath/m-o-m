module "service" {
  source = "../../../modules/service"

  extra_configmaps = [
    {
      "strange-extra-file" : "base64fancy=="
    }
  ]

  deployment_overrides = {
    some : "other-value",
    truth : true,
  }


  replicas = 3

}

output "this" {
  value = module.service
}
