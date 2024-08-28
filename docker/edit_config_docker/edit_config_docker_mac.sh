#!/bin/bash

# Shellscript to remove the line "credsStore": "desktop"
# from file .dokcer/config.json
# fixing the error:
# error getting credentials - err: exit status 1, out: ``

USER=$(whoami)
rm -rf /Users/$USER/.docker/config.json

BASEDIR=$(dirname "$0")
cp $BASEDIR/config.json /Users/$USER/.docker/config.json
