variable "type" {
  type = string
}
variable "replicas" {
  type = number
}

output "this" {
  value = {
    type     = var.type
    replicas = var.replicas
  }
}
