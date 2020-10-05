# Basic provisioning of EKS with Terraform

You can provision a basic EKS cluster with Terraform with the following commands:

```bash
terraform init
terraform plan
terraform apply
```

It might take a while for the cluster to be creates (up to 15-20 minutes).

As soon as cluster is ready, you should find a `kubeconfig_my-cluster` kubeconfig file in the current directory.
