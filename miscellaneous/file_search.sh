#!/bin/bash

USER=$(whoami)

echo "Type the file name: "
read file_name

grep -r "$file_name" ~/ #/Users/$USER

