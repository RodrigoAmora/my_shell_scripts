#!/bin/bash

#####################################
## Shell script to rename a branch ##
#####################################

echo "Type current name branch: ";
read currentNameBranch

echo "Type new name branch: ";
read newNameBranch


git branch -m $currentNameBranch $newNameBranch
git fetch origin
git branch -u origin/$newNameBranch $newNameBranch
git remote set-head origin -a
git remote prune origin
