#!/bin/bash

echo "Type old name branch: ";
read oldNameBranch;

echo "Type new name branch: ";
read newNameBranch;

git branch -m oldNameBranch newNameBranch

git fetch origin

git branch -u origin/newNameBranch newNameBranch

git remote set-head origin -a

git remote prune origin

