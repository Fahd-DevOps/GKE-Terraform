# GKE-Terraform

This Terraform project managing a Google Kubernetes Engine (GKE) cluster with private nodes and an Nginx deployment..

## Project Description

This project utilizes Terraform to:

* Establish two GCP projects: one for hosting and another for service.
* Configure a shared VPC between the projects.
* Create a GKE cluster with private nodes within the service project.
* Deploy an Nginx application to the cluster and expose it through a LoadBalancer service.

## Prerequisites

* A GCP project with enabled billing.
* Installed and configured `terraform` CLI.
* Your kubeconfig file configured for accessing the service project.
* Update `locals.tf` with your specific values:
    * `org_id`
    * `billing_account`
    * `host_project_name`
    * `service_project_name`

## Getting Started

1. Modify `locals.tf` with your values.
2. Run `terraform init` to initialize Terraform.
3. Preview the changes with `terraform plan`.
4. Apply the changes with `terraform apply`.

## Notes

* This is a basic example, potentially requiring modifications for your specific needs.
* Carefully review the documentation for each Terraform resource used in this project.
* Understand the security implications of running a GKE cluster with private nodes.

## Additional Resources

* Terraform documentation: [https://www.terraform.io/](https://www.terraform.io/)
* Google Kubernetes Engine documentation: [https://cloud.google.com/kubernetes-engine/docs](https://cloud.google.com/kubernetes-engine/docs)
* Shared VPC documentation: [https://m.youtube.com/watch?v=9eRYuX28RYc](https://m.youtube.com/watch?v=9eRYuX28RYc)
