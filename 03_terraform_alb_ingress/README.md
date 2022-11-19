# Setting up IAM policies for the ALB Ingress Controller in EKS with Terraform

You can provision an EKS cluster with the right policies for the ALB Ingress Controller with:

```bash
terraform init
terraform plan
terraform apply
```

It might take a while for the cluster to be created (up to 15-20 minutes).

As soon as the cluster is ready, you should find a `kubeconfig_learnk8s` kubeconfig file in the current directory.

You can use the kubeconfig file to deploy the ALB Ingress controller with:

```bash
helm install ingress incubator/aws-alb-ingress-controller \
  --set autoDiscoverAwsRegion=true \
  --set autoDiscoverAwsVpcID=true \
  --set clusterName=learnk8s
```
