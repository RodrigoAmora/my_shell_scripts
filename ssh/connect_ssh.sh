#!/bin/bash

#################################
## Shell script to connect SSH ##
#################################

echo "Enter the SSH key path: ";
read sshKeyPath

echo "Enter the user: ";
read sshUser

echo "Enter the IP: ";
read sshIP

ssh -i $sshKeyPath $sshUser@$sshIP
