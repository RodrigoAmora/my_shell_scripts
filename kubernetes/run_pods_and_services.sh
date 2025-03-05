#!/bin/bash

#########################################################
### Shellscript to run Pods and Service on Kubernetes ###
#########################################################

echo -e "\033[01;32m#############################\033[01;32m"
echo -e "\033[01;32m### Running ConfigMap.... ###\033[01;32m"
echo -e "\033[01;32m#############################\033[01;32m"
echo -e "\n\n"

kubectl apply -f configmap.yml

kubectl get cm

#####

echo -e "\033[01;32m########################\033[01;32m"
echo -e "\033[01;32m### Running Pods.... ###\033[01;32m"
echo -e "\033[01;32m########################\033[01;32m"
echo -e "\n\n"

kubectl apply -f pod-simple-app.yml
kubectl apply -f pod-mongo.yml
kubectl apply -f pod-redis.yml

#####

echo -e "\033[01;32m############################\033[01;32m"
echo -e "\033[01;32m### Running Services.... ###\033[01;32m"
echo -e "\033[01;32m############################\033[01;32m"
echo -e "\n\n"

kubectl apply -f svc-simple-app.yml
kubectl apply -f svc-mongo.yml
kubectl apply -f svc-redis.yml

#####

echo -e "\n"

kubectl get pods,svc
