#!/bin/bash

## backup.sh - Backs up a folder to a destination ##

echo "Type the origin directory path: "
read ORIGIN

DESTINATION="$ORIGIN/backup-$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

if [ -z "$ORIGIN" ]; then
  echo "Please, type the origin directory."
  exit 1
fi

tar -czf "$DESTINATION" "$ORIGIN"
echo "Backup made in: $DESTINATION"
