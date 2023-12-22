resource "kubernetes_service_account" "admin_account" {
  metadata {
    name      = "admin-account"
    namespace = "kube-system"
  }
}

resource "kubernetes_cluster_role_binding" "admin_account_binding" {
  metadata {
    name = "admin-account-binding"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
  subject {
    kind      = "ServiceAccount"
    name      = kubernetes_service_account.admin_account.metadata[0].name
    namespace = kubernetes_service_account.admin_account.metadata[0].namespace
  }
}

resource "kubernetes_secret" "admin_account_token" {
  depends_on = [kubernetes_service_account.admin_account]
  metadata {
    name = "admin-account"
    annotations = {
      "kubernetes.io/service-account.name" = "admin-account"
    }
    namespace = kubernetes_service_account.admin_account.metadata[0].namespace
  }
  type = "kubernetes.io/service-account-token"
}
