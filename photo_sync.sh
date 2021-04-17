#!/bin/bash

for frame in zero{1..4}; do
  echo ""
  echo "*** Processing ${frame} ***"
  rsync -axz  --delete /mnt/Media/icloud_photos/ pi@${frame}.local.alexwasserman.com:icloud_photos || echo " *** FAILED on ${frame} *** "
  echo "** Done with ${frame}"
  echo ""
done
