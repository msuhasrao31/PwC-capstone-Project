resource "kubernetes_deployment" "deployment" {
metadata {
     name = "nginx-deployment"
}
spec {
selector {
match_labels = {
"app" = "nginx"
}
}
replicas = 3
template {
metadata {
labels = {
"app" = "nginx"
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
