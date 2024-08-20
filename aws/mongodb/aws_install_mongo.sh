#!/bin/bash

echo -e "\033[01;32m##########################\033[01;32m"
echo -e "\033[01;32m### Installing MongoDB ###\033[01;32m"
echo -e "\033[01;32m##########################\033[01;32m"
echo -e "\n\n\n"

sudo mv mongodb-org-7.0.repo /etc/yum.repos.d/mongodb-org-7.0.repo

sudo yum install update
sudo yum install mongodb-org
#sudo apt install mongodb-org

sudo systemctl start mongod
sudo systemctl daemon-reload
sudo systemctl enable mongod

