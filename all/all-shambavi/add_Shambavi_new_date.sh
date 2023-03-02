#!/data/data/com.termux/files/usr/bin/bash

clear
echo "Simply appending a new date at the end of thr file"
echo " > ./shamb-dates.txt"
echo
echo "press ANY KEY or wait 5 secs"
read -s -n 1 -t 5
date >> ./shamb-dates.txt
echo
echo "New date added to \"shamb-dates.txt\" "
echo
echo "Do you want to perform a '$ git commit?'"
echo " > uDev: Not ready yet"
