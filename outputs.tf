output "service_name" {
  value       = kubernetes_service.nginx_service.metadata[0].name
  description = "Name of the Kubernetes Service"
}

output "service_port" {
  value       = kubernetes_service.nginx_service.spec[0].port[0].node_port
  description = "NodePort of the Service"
}
