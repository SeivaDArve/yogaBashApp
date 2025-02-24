#!/bin/bash

# Name and path of the file
   v_file=./shamb-dates-history.txt

# Vars for improved code reading
   v_ok="File exists, continuing... "
   v_nok="File does not exist, aborting"


clear
echo "Shambavi app: "
echo
echo "Simply appending a new date at the end of the file:"
echo " > $v_file"
echo

function f_appy_date_if_file_exists {
   echo
   echo "press ANY KEY or wait 10 secs"
   read -s -n 1 -t 10
   date >> $v_file
   echo
   echo "New date added to \"$v_file\" "
   echo
   echo " > Last 5 lines of file \"$v_file\" are:"
   tail -n 5 $v_file
   echo
   echo " > Today is:"
   date
   echo
   echo "Do you want to perform a '$ git commit?'"
   echo " > uDev: Not ready yet"
}

# Test if file exists 
   [[ -f $v_file ]] && echo "$v_ok" && f_appy_date_if_file_exists || echo "$v_nok"
