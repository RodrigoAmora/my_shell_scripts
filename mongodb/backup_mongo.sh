#!/bin/bash


###################################################################
## Shell script to resotre of a database on MongoDB.             ##
## You should Download Mongo Tools.                              ##
## Link: https://www.mongodb.com/try/download/database-tools     ##
##                                                               ## 
## After download Mongo Tools, configure the enviroment variable ##
## MONGO_TOOLS into your nachine <mongo_toole_directory/bin>     ##
###################################################################


echo "Type hostname: "
read hostname

echo -e "\n"

echo "Type port: "
read port

echo -e "\n"

echo "Type database name:"
read database_name

echo -e "\n"

echo "Type the output directory: "
read output_directory

cd $MONGO_TOOLS_HOME/bin

mongodump --host $hostname --port $port --db $database_name --out $output_directory
