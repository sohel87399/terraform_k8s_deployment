resource "kubernetes_deployment" "nginx_deployment" {
  metadata {
    name = var.app_name
    labels = {
      app = var.app_label
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.app_label
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_label
        }
      }

      spec {
        container {
          image = var.image
          name  = "nginx"

          port {
            container_port = 80
          }

          volume_mount {
            name       = "website-volume"
            mount_path = "/usr/share/nginx/html"
          }
        }

        volume {
          name = "website-volume"
          config_map {
            name = kubernetes_config_map.nginx_website.metadata[0].name
          }
        }
      }
    }
  }
}
