#! /bin/sh

###########################################
## Shell script to install Docker on EC2 ##
###########################################

sudo yum update -y
amazon-linux-extras install docker
service docker start
usermod -a -G docker ec2-user
chkconfig docker on
