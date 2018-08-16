#! /bin/sh
#! /bin/bash
# stan alam
DIALOG=${DIALOG=dialog}
tempfile=`tempfile 2>/dev/null` || tempfile=/tmp/test$$
trap "rm -f $tempfile" 0 1 2 5 15

$DIALOG --backtitle "Select the number of Bees" \
	--title "theBeesKnees" --clear \
        --radiolist "Choose the number of Bees you wish to bring up, but choose wisely ...  " 20 61 5 \
        "4"    "Four Bees" off \
        "5"    "Five Bees" off \
        "6"    "Six Bees" off \
        "7"    "Seven Bees" off \
        "8"    "Eight Bees" off \
        "9"    "Nine Bees" off\
        "10"   "Ten Bees"  off \
        "12"   "Twelve Bees" off \
        "14"   "Fourteen Bees" off \
        "16"   "Sixteen Bees" off \
        "18"   "Eighteen Bees" off \
        "20"   "Twenty Bees"   off \
        "22"   "Twenty Two Bees" off  2> $tempfile

retval=$?

choice=`cat $tempfile`
case $retval in
  0)
       if [ $choice = "" ]; then
            echo Enter Pressed
       fi

       if [ $choice = "4" ]; then
            echo activated Bees environment
            echo bringing up 4 bees

       ~/beeswithmachineguns/bees up -s 4 -g public -i ami-06b7886e -t t2.micro -k DW_KeyPair -l ubuntu;

       fi

       if [ $choice = "5" ]; then
             echo Bringing up 5 bees
       fi

       if [ $choice = "6" ]; then
             echo Bringing up 6 Bees
       fi

       if [ $choice = "7" ]; then
             echo Bringing up 7 Bees
       fi

       if [ $choice = "8" ]; then
             echo Bringing up 8 Bees
       fi

       if [ $choice = "9" ]; then
             echo Bringing up 9 Bees
       fi

       if [ $choice = "10" ]; then
             echo Bringing up 10 Bees
       fi

       if [ $choice = "12" ]; then
             echo Bringing up 12 Bees
       fi

       if [ $choice = "14" ]; then
             echo Bringing up 14 Bees

       if [ $choice = "15" ]; then
             echo Bringing up 15 Bees
       fi

       if [ $choice = "16" ]; then
             echo Bringing up 16 Bees

       fi

       if [ $choice = "18" ]; then
              echo Bringing up 18 Bees
       fi

       if [ $choice = "20" ]; then
              echo Bringing up 20 Bees
       fi

       if [ $choice = "22" ]; then
              echo Bring up 22 Bees
       fi

       fi ;;


   1)
    echo "Cancel pressed.";;
  255)
    echo "ESC pressed.";;
esac
