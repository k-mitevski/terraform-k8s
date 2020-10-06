# Kubernetes resources

In this folder you will find the basic resources to deploy [an application that displays a message, the name of the pod and details of the node it's deployed to.](https://github.com/paulbouwer/hello-kubernetes)

You can deploy the application in your cluster with:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service-nodeport.yaml
kubectl apply -f ingress.yaml
```
