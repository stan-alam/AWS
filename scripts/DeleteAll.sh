#!/usr/bin/env bash
# Delete all aws assets

read -p "Delete All assets? <Y/N" prompt
if [[$prompt == "y"  || $prompt == "Y" || $prompt == "yes" || $prompt =="Yes"]]
  then
    echo "deleting all assets..."
  else
    exit
fi
