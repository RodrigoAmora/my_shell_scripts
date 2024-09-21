#!/bin/bash

#########################################################
## Shell script to do backup of a database on MongoDB ##
#########################################################

echo "Type hostname: "
read hostname

echo "Type port: "
read port

echo "Type database name:"
read database_name

echo "Type the output directory: "
read output_directory

mongodump --host $hostname --port $port --db $database_name --out $output_directory
