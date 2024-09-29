#!/bin/bash

#########################################################
## Shell script to do backup of a database on MongoDB ##
#########################################################

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

cd $MONGO_HOME/bin
mongodump --host $hostname --port $port --db $database_name --out $output_directory
