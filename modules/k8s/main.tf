variable "configmaps" {
  type = list(any)
}
variable "deployment" {
  type = map(any)
}

output "this" {
  value = {
    configmaps = var.configmaps
    deployment = var.deployment
  }
}
