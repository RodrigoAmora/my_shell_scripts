#!/bin/bash

######################################################
## Shell script to do backup of a database on MySQL ##
######################################################

echo "Enter username: "
read username

echo "Enter password: "
read password

echo "Enter database name: "
read db_name

backup_file="backup.sql"
mysqldump -u $username -p $password $db_name > "$backup_file"
