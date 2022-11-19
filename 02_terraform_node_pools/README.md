# Multiple managed node pools with EKS and Terraform

You can provision an EKS cluster with multiple node pools with:

```bash
terraform init
terraform plan
terraform apply
```

It might take a while for the cluster to be created (up to 15-20 minutes).

As soon as the cluster is ready, you should find a `kubeconfig_learnk8s` kubeconfig file in the current directory.
