#!/bin/bash

echo "Type name of .jar: "
read nameJar;

if ! [[ $nameJar =~ ".jar" ]]; then
  	nameJar+=".jar";
fi

echo "Type the presigned URL: " 
read presignedURL;

echo -e "\033[01;32m#############################\033[01;32m"
echo -e "\033[01;32m### Downloading .jar file ###\033[01;32m"
echo -e "\033[01;32m#############################\033[01;32m"
echo -e "\n\n\n"

wget -O $nameJar "$presignedURL"

sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8081

nohup java -jar $nameJar
