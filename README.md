# Provisioning Kubernetes clusters on AWS with Terraform and EKS

This repository contains the the sample code necessary to provision an EKS clusters with the ALB Ingress Controller.

Code samples:

1. [Provisioning EKS with eksctl](eksctl/README.md)
1. [Basic provisioning of EKS with Terraform](01_terraform_eks/README.md)
1. [Multiple managed node pools with EKS and Terraform](02_terraform_node_pools/README.md)
1. [Setting up IAM policies for the ALB Ingress Controller in EKS with Terraform](03_terraform_alb_ingress/README.md)
1. [Integrating the Helm provider with Terraform and EKS](04_terraform_helm_provider/README.md)
1. [Encapsulating clusters as Terraform modules](05_terraform_env_module/README.md)
1. [Parametrising clusters as Terraform modules](06_terraform_envs_customised/README.md)
1. [Kubernetes files to deploy an "Hello World" application](kubernetes/README.md)
