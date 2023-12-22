output "admin_token" {
  sensitive = true
  value     = kubernetes_secret.admin_account_token.binary_data
}
