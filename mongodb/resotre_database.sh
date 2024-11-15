#!/bin/bahs


###################################################################
## Shell script to resotre of a database on MongoDB.             ##
## You should Download Mongo Tools.                              ##
## Link: https://www.mongodb.com/try/download/database-tools     ##
##                                                               ## 
## After download Mongo Tools, configure the enviroment variable ##
## MONGO_TOOLS into your nachine <mongo_toole_directory/bin>     ##
###################################################################

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


source ~/.bash_profile

#mongorestore --uri $hostname $backup_directory

mongorestore \
   --host=$hostname \
   --port=$port \
   --username=$username \
   --authenticationDatabase=admin \
   $backup_directory
