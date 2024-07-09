#!/bin/bash

# Script para remover a linha "credsStore": "desktop"
# do aqruivo .dokcer/config.json
# corrigindo o erro abaixo:
# error getting credentials - err: exit status 1, out: ``

echo "Type your username: ";
read user_name;

rm -rf /Users/$user_name/.docker/config.json

BASEDIR=$(dirname "$0")
cp $BASEDIR/config.json /Users/$user_name/.docker/config.json
