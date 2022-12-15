variable "configmaps" {
  type = list(any)
}
variable "deployment" {
  type = map(any)
}

output "k8s" {
  value = {
    configmaps = var.configmaps
    deployment = var.deployment
  }
}
