# Infrastructure Optimisation and CI/CD Implementation show case

## Infrastructure as Code (IaC) 🌐

    - Use Terraform to create infrastructure as code for the application's environment on **DigitalOcean**

DO for cost savings

    - Include necessary components like **VPCs** and any other resources you deem essential

Not much needed

    - Provision **Kubernetes** cluster with separate node pools for infrastructure and applications

2 simple nodepools enough for the example

    - Ensure that the infrastructure is scalable and follows best practices for security

Autoscaling is off, since this is a 1 person project no extra roles/serviceaccounts created. I.e. would be using superadmin for manual kubectl and second SA with superadmin for CI

## Kubernetes Configuration

    - Implement GitOps practices using tools like **Flux** to manage cluster deployments(you can use minikub for this task)
    - Utilize **Helm** or **Kustomize** to manage Kubernetes configurations for the abstract or echo microservice
    - Implement a deployment strategy that ensures zero downtime during updates

used provisioned k8s, podinfo + flask-hello-world deployed
Helm for podinfo, Kustomize for flask


## CI/CD Pipeline

    - Design and implement a **CI/CD pipeline** for the microservice application
    - Integrate the pipeline with version control (e.g., GitHub) and trigger automatic deployments upon code changes
    - Incorporate testing stages and ensure the pipeline is resilient and easily maintainable

https://github.com/AsoTora/flask-hello-world

to improve:

- improve sem versions strategy, for ex deciding on tag names, using latest versions
- add branch stages. i.e. build and lint on branches only (easy to implement, but decided to cut it to save time)
- add stage/dev/prod envs
- add dependencies checks/ use dependabot from github
- CODEOWNERS setup for code review: i.e https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners#codeowners-and-branch-protection
- package as a helm chart if needed
