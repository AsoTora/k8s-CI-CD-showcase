resource "digitalocean_project" "showcase" {
  name        = "showcase"
  description = "A project to represent development showcase."
  purpose     = "Development"
  environment = "Development"
  resources   = [digitalocean_kubernetes_cluster.kubernetes_cluster.urn]
}

# main nodepool
resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name    = var.k8s_clustername
  region  = var.region
  version = var.k8s_version

  # default
  node_pool {
    name       = "pool-infra"
    size       = var.k8s_nodesize
    auto_scale = false
    node_count = 2 # # should be 3/5/7, but saving money for a showcase
    tags       = ["infra"]
    taint {
      key    = "workloadKind"
      value  = "apps"
      effect = "PreferNoSchedule"
    }
  }

  maintenance_policy {
    start_time = "07:00"
    day        = "sunday"
  }

}

# applications
resource "digitalocean_kubernetes_node_pool" "app_node_pool" {
  cluster_id = digitalocean_kubernetes_cluster.kubernetes_cluster.id

  name       = "pool-apps"
  size       = var.k8s_nodesize
  auto_scale = false
  node_count = 2 # should be more, but saving money for a showcase
  labels = {
    service = "apps"
  }
  taint {
    key    = "workloadKind"
    value  = "infra"
    effect = "PreferNoSchedule"
  }
  tags = ["apps"]
}
