#!/bin/bash

echo "Type name of .jar: "
read nameJar;

if ! [[ $nameJar =~ ".jar" ]]; then
  	nameJar+=".jar";
fi

echo "Type the presigned URL: " 
read presignedURL;

wget -O $nameJar "$presignedURL"

iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

nohup java -jar $nameJar
