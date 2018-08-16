#!/bin/bash

dialog --title "Bring up the Bees Virtual Environment" \
--backtitle "Maya The Bee" \
--yesno "Would you like to bring up the Bees Virtual Environment" 7 60

response=$?
case $response in
   0) echo "Bees Environement activated "
    . ~/.virtualenvs/bees/bin/activate;
    res=$(curl -X POST -d '{"username":"stan","password":"stan5000!"}' -H 'Content-Type: application/json' https://localhost:3000); export token=$(node -pe 'JSON.parse(process.argv[1]).token' "$res");;
   1) echo "Exit.";;
   255) echo "[ESC] key pressed.";;
esac
