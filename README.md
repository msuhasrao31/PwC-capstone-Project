# PwC-capstone-Project
Provisioning kubernetes with Terraform

This project helps to provision the kubernetes and manage the kubernetes deployment with the help of terraform in Azure cloud

## Initial setup in AZURE CLI
```
1 open azure portal
2 setup terraform
3 Redeem Azure Pass
4 Open Azure Cloud Shell - Bash Prompt
5 Now Create Azure Contributor Service Principal for terraform Auth.
6 az login 
7 az account list -o table 
8 az account set -s "<subscription-id>"
9 az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<subscription_id>"
## Export the Azure Auth Variable in your bash RC.
10 export ARM_CLIENT_SECRET="<<password>>"
   export ARM_CLIENT_ID="<<appID>>"
   export ARM_SUBSCRIPTION_ID="<<subscriptionID>>"
   export ARM_TENANT_ID="<<tenant>>"
11 Initialize the Bashrc Variables
12 source ~/.bashrc
13 git clone into azure cli

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
if this command gives error
try running following commands from present directory
mkdir ~/.kube
mv kubeconfig ~/.kube/config
kubectl create -f deployment.yaml
kubectl get pods

```

## App deployment on the cluster using Terraform
```
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
  384  kubectl expose deployment team-5-webapp --type=LoadBalancer --name=my-service
  385  kubectl get services my-service
  386  terraform destroy --auto-approve
  387  ls
  388  history

```
## database-management in kubernetes

```
  102  mkdir database-automation
  104  cd database-automation/
  108  vi mysql_service.yaml 
  109  kubectl create -f mysql_service.yaml
  117  vi mysql_deployment.yaml
  118  kubectl create -f mysql_deployment.yaml
  119  vi persistence_volume.yaml 
  139  kubectl create -f persistence_volume.yaml 
  140  vi pvClaim.yaml
  141  kubectl create -f pvClaim.yaml 
  142  kubectl get pods
  144  kubectl apply -f persistence_volume.yaml pvClaim.yaml 
  145  kubectl apply -f persistence_volume.yaml
  146  kubectl apply -f pvClaim.yaml 
  147  clear
  148  kubectl apply -f mysql_deployment.yaml 
  149  clear
  150  kubectl get deployments
  151  kubectl get pods
  152  kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -ppassword
  153  clear
  154  ls -a
  155  cd ..
  156  ls
  157  history
```
## App deployment on cluster with Database and polyglot persistence

```
  294  mkdir wordpress-mysql-deploy
  295  cd wordpress-mysql-deploy/
  316  kubectl apply -k ./
  317  kubectl get secrets
  318  kubectl get pvc
  319  kubectl get pods
  320  kubectl get services wordpress
```
