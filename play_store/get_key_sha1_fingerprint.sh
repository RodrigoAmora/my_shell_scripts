#!/bin/bash

echo "Type the path of the your file of .keystore: "
read directoryKeyStore;

echo "Type your alias: ";
read alias;

echo "Type your sotre pass: ";
read storePasss;

echo "Type your key pass: ";
read keyPass;

echo -e "\n\n\n";
echo -e "\033[01;32m#######################\033[01;32m"
echo -e "\033[01;32m### SHA1 generated! ###\033[01;32m"
echo -e "\033[01;32m#######################\033[01;32m"
echo -e "\n\n\n";

echo -e "\033[01;32m#######################\033[01;32m"
echo -e "\n\n";
keytool -list -v -keystore $directoryKeyStore -alias $alias -storepass $storePasss -keypass $keyPass
echo -e "\n\n";
echo -e "\033[01;32m#######################\033[01;32m"
