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
### App deployment on the cluster using Terraform

  360  cd app-deploy-tf/
  361  vi provider.tf
  362  cd ..
  363  kubectl config get-contexts
  364  cd app-deploy-tf/
  365  ls
  366  vi app.tf
  367  clear
  368  terraform init
  369  terraform plan
  370  vi app.tf
  371  terraform plan
  372  terraform apply --auto-approve
  373  kubectl get pods
  374  kubectl get pods -o wide
  375  localhost
  376  ipconfig
  377  vi app.tf
  378  terraform destroy --auto-approve
  379  vi app.tf
  380  terraform plan
  381  terraform apply --auto-approve
  382  kubectl get deployments
  383  kubectl expose deployment hello-world --type=LoadBalancer --name=my-service
  384  kubectl expose deployment team-5-webapp --type=LoadBalancer --name=my-service
  385  kubectl get services my-service
  386  terraform destroy --auto-approve
  387  ls
  388 history
