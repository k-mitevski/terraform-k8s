# Integrating the Helm provider with Terraform and EKS

You can provision an EKS cluster and install Helm packages at the same time with:

```bash
terraform init
terraform plan
terraform apply
```

It might take a while for the cluster to be created (up to 15-20 minutes).

As soon as the cluster is ready, you should find a `kubeconfig_learnk8s` kubeconfig file in the current directory.

The current code automatically installs the ALB Ingress Controller with Helm.
