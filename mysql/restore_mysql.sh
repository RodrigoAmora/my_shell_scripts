#!/bin/bash

#######################################################
## Shell script to do restore of a database on MySQL ##
#######################################################

echo "Enter username: "
read username

echo "Enter database name: "
read database_name

echo "Enter file name: "
read file_name

mysql -u $username -p $database_name < $file_name
