# Setting up IAM policies for the ALB Ingress Controller in EKS with Terraform

You can provision an EKS cluster with the right policies for the ALB Ingress Controller with:

```bash
terraform init
terraform plan
terraform apply
```

It might take a while for the cluster to be creates (up to 15-20 minutes).

As soon as cluster is ready, you should find a `kubeconfig_my-cluster` kubeconfig file in the current directory.

You can use the kubeconfig file to deploy the ALB Ingress controller with:

```bash
export KUBECONFIG=${PWD}/kubeconfig_my-cluster
helm install ingress incubator/aws-alb-ingress-controller \
  --set autoDiscoverAwsRegion=true \
  --set autoDiscoverAwsVpcID=true \
  --set clusterName=my-cluster
```
