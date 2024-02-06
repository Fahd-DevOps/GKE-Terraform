resource "kubernetes_service" "nginx_service" {
  metadata {
    name = "nginx"
    namespace = "default"
  }

  spec {
    selector = {
      app = kubernetes_deployment.nginx_deployment.metadata[0].labels.app  # Matches the deployment's label
    }

    port {
      port = 80
      target_port = 80  # Matches the container port
    }

    type = "LoadBalancer"  # Exposes the service externally
  }
}