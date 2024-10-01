#!/bin/bahs


################################################################
## Shell script to resotre of a database on MongoDB.          ##
## You should Download MongoDB Relational Migrator.           ##
## Link: https://mongodb.com/try/download/relational-migrator ##
################################################################

echo "Enter hostname: "
read hostname

echo -e "\n"

echo "Enter port: "
read port

echo -e "\n"

echo "Enter database name:"
read database_name

echo -e "\n"

echo "Enter user: "
read username

echo -e "\n"

echo "Enter the directory where the backup is: "
read backup_directory


mongorestore --uri $hostname $backup_directory

mongorestore \
   --host=$hostname \
   --port=$port \
   --username=$username \
   --authenticationDatabase=admin \
   /opt/backup/mongodump-1
