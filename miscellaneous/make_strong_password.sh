#!/bin/bash

USER=$(whoami)
echo "Hello $USER!"

echo "Your password was created!"
echo -e "\n"

date | md5sum | awk '{print $1}'
