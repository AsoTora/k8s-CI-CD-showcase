# tf

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.34.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.kubernetes_cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_kubernetes_node_pool.app_node_pool](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_node_pool) | resource |
| [digitalocean_project.showcase](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project) | resource |
| [kubernetes_cluster_role_binding.admin_account_binding](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cluster_role_binding) | resource |
| [kubernetes_secret.admin_account_token](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [kubernetes_service_account.admin_account](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |
| [digitalocean_kubernetes_cluster.kubernetes_cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | n/a | `any` | n/a | yes |
| <a name="input_k8s_clustername"></a> [k8s\_clustername](#input\_k8s\_clustername) | n/a | `string` | `"dev-cluster"` | no |
| <a name="input_k8s_nodesize"></a> [k8s\_nodesize](#input\_k8s\_nodesize) | n/a | `string` | `"s-1vcpu-2gb"` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | n/a | `string` | `"1.28.2-do.0"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"sgp1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_token"></a> [admin\_token](#output\_admin\_token) | n/a |
<!-- END_TF_DOCS -->
