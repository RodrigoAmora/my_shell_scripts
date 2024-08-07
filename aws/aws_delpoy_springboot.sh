#!/bin/bash

iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

echo -e "\033[01;32m#########################\033[01;32m"
echo -e "\033[01;32m### Installing Java17 ###\033[01;32m"
echo -e "\033[01;32m#########################\033[01;32m"
echo -e "\n\n\n"

echo "Type name of your jar file: ";
read jarFileName;

echo "Type link of yout Bucket: ";
read bucketURl;

echo -e "\033[01;32m#############################\033[01;32m"
echo -e "\033[01;32m### Downloading .jar file ###\033[01;32m"
echo -e "\033[01;32m#############################\033[01;32m"
echo -e "\n\n\n"

wget -O $jarFileName "$bucketURl"
