#!/bin/bash
# Title:
# Description: Beep sound that repeat itself every X minuts

function f_cor3 {
   tput setaf 6
}
function f_resetCor {
   tput sgr0
}

while true
do
   clear
   figlet waker-up
   echo "Waker Up: a Bell will play every 1 minute "
   echo
   echo "If you want to lock your phone screen, better use wake-lock"
   f_cor3
   echo -n "   termux-wake-lock "
   f_resetCor
   echo -n "and "
   f_cor3
   echo "termux-wake-unlock"
   f_resetCor
   echo
   echo -n "Cancel with "
   f_cor3
   echo -n "Ctrl-C "
   f_resetCor
   sleep 60
   termux-media-player play ${v_REPOS_CENTER}/yogaBashApp/all/sounds/bell-sound.mp3 1>/dev/null
done
