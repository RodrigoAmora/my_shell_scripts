#!/bin/bash

echo "Type the path of the your file of .keystore: "
read directoryKeyStore;

echo "Type your alias: ";
read alias;

echo "Type your sotre pass: ";
read storePasss;

echo "Type your key pass: ";
read keyPass;

echo "\n\n\n";
echo "SHA1 generated!";
echo "\n\n\n";

keytool -list -v -keystore $directoryKeyStore -alias $alias -storepass $storePasss -keypass $keyPass

