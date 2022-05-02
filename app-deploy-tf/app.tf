resource "kubernetes_deployment" "color" {
    metadata {
        name = "team-5-webapp"
        labels = {
            app   = "color"
            color = "blue"
        } 
    } 
    spec {
        selector {
            match_labels = {
                app   = "color"
                color = "blue"
            } 
        } 
        replicas = 3
        template { 
            metadata {
                labels = {
                    app   = "color"
                    color = "blue"
                } 
            } 
            spec {
                container {
                    image = "suhasmsr/mywebapp1.0"   
                    name  = "color-blue"          
                    env { 
                        name = "COLOR"
                        value = "blue"
                    }
                    port { 
                        container_port = 8080
                    }          
                    }
                } 
            } 
        } 
    }
resource "kubernetes_service" "color-service-np" {
  metadata {
    name = "color-service-np"
  } 
  spec {
    selector = {
      app = "color"
    } 
    session_affinity = "ClientIP"
    port {
      port      = 8080 
      node_port = 30085
    } 
    type = "NodePort"
  } 
}
