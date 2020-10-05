# Multiple managed node pools with EKS and Terraform

You can provision an EKS cluster with multiple node pools with:

```bash
terraform init
terraform plan
terraform apply
```

It might take a while for the cluster to be creates (up to 15-20 minutes).

As soon as cluster is ready, you should find a `kubeconfig_my-cluster` kubeconfig file in the current directory.
