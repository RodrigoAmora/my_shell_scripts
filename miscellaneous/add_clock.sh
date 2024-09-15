#!/bin/bash

## Shellscript to add a clock into terminal ##

while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &


