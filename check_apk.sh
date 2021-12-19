#!/bin/bash

apk update > /dev/nul
countUpdates=$(apk -u list | wc -l)

if (($countUpdates>0)); then
  echo "WARNING - $countUpdates updates available (apk)"
  exit 1
fi

echo "OK - no updates available (apk)"
exit 0
