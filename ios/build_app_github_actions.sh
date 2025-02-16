#!/bin/bash

####################################################
## Shellscript to build iOS app on Github Actions ##
####################################################

xcodebuild build \
-scheme Eventos\ TI \
-destination 'platform=iOS Simulator,name=iPhone 11 Pro'
