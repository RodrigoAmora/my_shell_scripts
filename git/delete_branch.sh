#!/bin/bash

############################################
### Shelscript to delete a branch on Git ###
############################################

echo "Type name branch: ";
read nameBranch

# delete a local branch
git branch -d $nameBranch

# delete a remote branch
git push origin --delete $nameBranch
