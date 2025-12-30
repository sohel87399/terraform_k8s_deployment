variable "app_name" {
  description = "Name of the application"
  type        = string
  default     = "nginx-app"
}

variable "app_label" {
  description = "Label for the application"
  type        = string
  default     = "nginx"
}

variable "image" {
  description = "Docker image to deploy"
  type        = string
  default     = "nginx:latest"
}

variable "replicas" {
  description = "Number of replicas"
  type        = number
  default     = 2
}

variable "node_port" {
  description = "NodePort to expose the service on (30000-32767)"
  type        = number
  default     = 30201
}
