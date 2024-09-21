#!/bin/bash

echo "Type name branch: ";
read nameBranch

git checkout develop
git pull origin develop
git checkout $nameBranch
git merge
