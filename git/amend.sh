#!/bin/bash

########################################################
### Shellscript to change the message of last commit ###
########################################################

echo "Type new message: "
read messageCommit

echo "Type the branch: "
read branch

git --amend -m "$messageCommit"
git push --force-with-lease origin $branch
