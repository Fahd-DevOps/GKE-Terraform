resource "kubernetes_deployment" "nginx_deployment" {
  metadata {
    name = "nginx-deployment"
    namespace = "default"
    labels = {
      app = "nginx"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }

      spec {
        container {
          name = "nginx"
          image = "nginx:1.14.2"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}