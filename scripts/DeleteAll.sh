#!/usr/bin/env bash
# Delete all aws assets

# include global env variables
../AWS/scripts/env.sh

read -p "Delete All assets? <Y/N" prompt
if [[$prompt == "y"  || $prompt == "Y" || $prompt == "yes" || $prompt =="Yes"]]
  then
    echo "deleting all assets..."
  else
    exit
fi
# check dir
where=$(pwd)
where="${where: -3}"
if test "$where" = "aws"; then
  echo "must be run from awd dir with ./AWS/scripts/DeleteAll.sh"
  exit
fi
