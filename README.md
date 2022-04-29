# PwC-capstone-Project
Provisioning kubernetes with Terraform

This project helps to provision the kubernetes and manage the kubernetes deployment with the help of terraform in Azure cloud

## Inital setup in AZURE CLI
```
open azure portal
az login and setup terraform
git clone into azure cli

```
## Automate the kubernetes management using Terraform
```
cd PwC-capstone-project
terraform init
terraform apply --auto-approve

```
## Deploy basic NGINX App in K8

```
mv kubeconfig ~/.kube/config
kubectl create -f deployment.yaml
kubectl get pods

```
