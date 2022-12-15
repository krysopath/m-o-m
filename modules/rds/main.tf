variable "type" {
  type = string
}
variable "replicas" {
  type = number
}

output "k8s" {
  value = {
    type  = var.type
    replicas = var.replicas
  }
}
