#!/bin/bash

#########################################################
### Shellscript to run Pods and Service on Kubernetes ###
#########################################################

echo -e "\033[01;32m########################\033[01;32m"
echo -e "\033[01;32m### Running pods.... ###\033[01;32m"
echo -e "\033[01;32m########################\033[01;32m"
echo -e "\n\n"

kubectl apply -f pod-simple-app.yml

echo -e "\033[01;32m############################\033[01;32m"
echo -e "\033[01;32m### Running services.... ###\033[01;32m"
echo -e "\033[01;32m############################\033[01;32m"
echo -e "\n\n"

kubectl apply -f svc-simple-app.yml

echo -e "\n"

kubectl get pods,svc
