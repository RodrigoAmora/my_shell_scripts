#!/bin/bash

###############################################################
## Shellscript to build test of an iOS app on Github Actions ##
###############################################################

xcodebuild test \
-scheme Eventos\ TI \
-destination 'platform=iOS Simulator,name=iPhone 11 Pro'
