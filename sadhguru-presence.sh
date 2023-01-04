#!/bin/bash

# Title: Script for Sadhguru Presence time
# Description: script that helps sadhaka (yoga practitioner) to attend sadhguru presence time at 6h20 PM
   # Description 2: Yoga chant at 18h20 every day.

# Usage: This script will be called by an alias set by DRYa app (alias sadhguru-presence=".../sadhguru-presence.sh"). 
   # So, simply choose an argument to go along with the script 
   # (examples: 'sadhguru-presence --song-only' or 
   # 'sadhguru-presence --song+wallpaper' 
   # or 'sahguru-presence --youtube' or 
   # simply 'safhguru-presence' for termux befault behavior)

case $1 in
   -s | --song-only)
      echo "song only underDev"
   ;;
   -S | --song+wallpaper)
      echo "song and wallpaper underDev"
   ;;
   -y | --youtube)
      echo "You may need to shut down youtube app totally for termux to open it correctly. Sometimes is youtube is open in some other link, termux will only focus yoytube without changing url"
      termux-open-url https://youtu.be/4i6sQy--Sbs
   ;;
   *)
      echo "Title: sadhguru-presence"
      echo "Usage:"
      echo " > simply choose an argument to go along with the script"
      echo
      echo "Examples:"
      echo " > --song-only       (to open music player)"
      echo " > -s                (to open music player)"
      echo " > --song+wallpaper  (to open music player and open img)"
      echo " > -S                (to open music player and open img)"
      echo " > --youtube         (to open at YouTube with Termux help) "
      echo " > -y                (to open at YouTube with Termux help) "
      echo " > <no args>         (to diaplay this message)"
   
   ;;
esac
