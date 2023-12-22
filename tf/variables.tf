variable "do_token" {
}
variable "region" {
  default = "sgp1"
}
variable "k8s_clustername" {
  default = "dev-cluster"
}
variable "k8s_version" {
  default = "1.28.2-do.0"
}
variable "k8s_nodesize" {
  default = "s-1vcpu-2gb"
}
