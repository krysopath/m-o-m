variable "extra_configmaps" {
  type = list(any)
}

variable "deployment_overrides" {
  type = map(any)
}

variable "replicas" {
  type    = number
  default = 2
  validation {
    condition     = var.replicas < 3
    error_message = "You did evil thing which also was illegal."
  }
}

module "k8s" {
  source = "../k8s"
  configmaps = concat(var.extra_configmaps, [
    {
      "ca.crt" : "b64megastring=="
    },
  ])
  deployment = merge(var.deployment_overrides, {
    some : "value"
    truth : true
  })
}

module "rds" {
  source   = "../rds"
  type     = "psql"
  replicas = 2
}

output "this" {
  value = {
    k8s : module.k8s,
    rds : module.rds
  }
}
