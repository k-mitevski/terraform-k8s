# Eksctl cluster

In this folder you will find a sample YAML file to deploy an EKS cluster with eksctl.

You can create the cluster with:

```bash
eksctl create cluster -f cluster.yaml
```
And delete it with:
```bash
eksctl delete cluster --name=learnk8s
```