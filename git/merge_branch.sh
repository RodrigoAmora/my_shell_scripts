#!/bin/bash

echo "Type name branch: ";
read nameBranch

git fetch
git checkout develop
git pull
git checkout $nameBranch
git merge
