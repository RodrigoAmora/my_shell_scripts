#!/bin/bash

####################################
## Shellscript to intsall AWS_CLI ##
####################################

curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /
aws --version
