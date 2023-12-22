data "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name       = var.k8s_clustername
  depends_on = [digitalocean_kubernetes_cluster.kubernetes_cluster]
}
