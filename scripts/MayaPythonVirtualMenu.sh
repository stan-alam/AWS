#!/bin/bash
# MayaMenu Virtual ENV
dialog --title "Bring up the Bees Virtual Environment" \
--backtitle "Maya The Bee" \
--yesno "Would you like to bring up the Bees Virtual Environment" 7 60

response=$?
case $response in
   0) echo "Bees Environement activated "
    . ~/.virtualenvs/bees/bin/activate;;
   1) echo "Exit";;
   255) echo "[ESC] key pressed.";;
esac
