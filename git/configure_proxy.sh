#!/bin/bash

echo "Type the proxy HTTP: "
read proxyHTTP;

echo "Type the proxy HTTPS: "
read proxyHTTPS;

git config --global http.sslVerify false
git config --global hhtp.proxy $proxyHTTP
git config --global https.sslVerify false
git config --global hhtps.proxy $proxyHTTPS
git config --global credential.helper store
