# Parametrising clusters as Terraform modules terraform > v1.x.x

You can provision multiple EKS clusters with:

```bash
make plan
make apply
```

It might take a while for the cluster to be creates (up to 15-20 minutes).

At the end you will have:

1. A cluster for development.
1. A cluster for staging.
1. A cluster for production.

In the same folder you will find a kubeconfig file for each cluster.
