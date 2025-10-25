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

# An alias should be added to be sourced at
   # uDev: add alias to dryaSRC (done)
      # at dryaSRC: 'alias termux-stop="termux-media-player stop"'
   # uDev: add a test for the following commands:

function f_cor3 {
   tput setaf 6
}
function f_resetCor {
   tput sgr0
}


function f_wait {
   tput sc
   echo "Waiting: 5 secs before playing song"
   sleep 5
   tput rc
}

clear
figlet Sadhguru Presence

case $1 in
   -s | --song-only)
      echo "Opening music"
      echo -n " > "
      termux-media-player play ${v_REPOS_CENTER}/yogaBashApp/all/all-sadhguru-presence/"Sadhguru Presence Sadhana Time at 6h20 PM.mp3"
      echo
      echo -ne "To stop the music playing: "
      tput setaf 4
      echo "termux-stop"
      tput sgr0
   ;;
   -S | --song+wallpaper)
      echo "Opening wallpaper"
      termux-open ${v_REPOS_CENTER}/yogaBashApp/all/all-sadhguru-presence/"Sadhguru-presence sadhana-time wallpaper.jpg"
      echo "Opening music"
      echo -n " > "
      f_wait && termux-media-player play ${v_REPOS_CENTER}/yogaBashApp/all/all-sadhguru-presence/"Sadhguru Presence Sadhana Time at 6h20 PM.mp3"
      echo
      echo -ne "To stop the music playing: "
      tput setaf 4
      echo "termux-stop"
      tput sgr0
   ;;
   -P | --waiting)
      # Run a while loop counting time and displaying time. Whenever the contition "data=18:20" is found, run the function with wallpaper and sound. 
      # Despertador/Alarm-clock
         clear
         figlet "Presence"

      # Display instructions on the screen
         echo -n "Counting time until Sadhguru Presence happens at "
         f_cor3
         echo "18:20:00"
         f_resetCor
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
         echo -n "Cancel with: "
         f_cor3
         echo "Ctrl-C"
         f_resetCor
         echo

      # Set Android to never hibernate termux if the wait is too long
         # uDev: it must contemplate Windows too
         #termux-wake-unlock

      # Creating a while loop that only breaks at the right time
         date +%c | grep "18:20:00"
         while [[ $? == 1 ]]
         do 
            tput sc; tput civis; 
            echo -n "Current time: "
            f_cor3
            echo -n $(date +%H:%M:%S)
            f_resetCor
            tput cnorm
            sleep 1
            # If time 18:20:00 is found, the loops is broken
            tput rc

            # This command must be the last one (in order for the variable $? gets the 0 value. Because 0 means Sucess)
               date +%c | grep "18:20:00"

               # If previous command failed, try one new and LAST search (searching if 'date' command detects the imediate next second instead of the previous second. This is meant to fix the bug created by the 'sleep 1' that takes longer that 1 second (Calc: 'sleep 1' + 'date' == '1 second' + "CPU speed to resolve the 'date' command")) :
               if [[ $? == 1 ]]; then
                  date +%c | grep "18:20:01"
               fi
         done

      # Display text beautifully after Loop finds the exact time:
         tput rc
         echo -n "Current time: " 
         date +%c | grep "18:20:00" --color=AUTO

      # Adding more info and running the sound:
         echo
         echo "Waiting is done... Sadhguru Presence playing"
         termux-media-player play ${v_REPOS_CENTER}/yogaBashApp/all/all-sadhguru-presence/"Sadhguru Presence Sadhana Time at 6h20 PM.mp3" 1>/dev/null
         echo -ne " > To stop the music playing: "
         tput setaf 4
         echo "termux-stop"
         tput sgr0

      # Set Android to allow hibernation again in termux 
         # uDev: it must contemplate Windows too
         #termux-wake-lock

      # Mixing with more linux learning:
         echo
         echo "uDev: to practice sqlite: everytime the bell rings at the end, send a log file to a sqlite database"
   ;;
   -w | --wallpaper)
      echo "Opening wallpaper (only)"
      termux-open ${v_REPOS_CENTER}/yogaBashApp/all/all-sadhguru-presence/"Sadhguru-presence sadhana-time wallpaper.jpg"
   ;;
   -y | --youtube)
      echo "Troubleshooting:"
      echo " > You may need to shut down youtube app totally for termux to open it correctly. Sometimes is youtube is open in some other link, termux will only focus yoytube without changing url"
      echo
      termux-open-url https://youtu.be/4i6sQy--Sbs
   ;;
   *)
      echo "Title: sadhguru-presence"
      echo "Usage:"
      echo " > simply choose an argument to go along with the script"
      echo
      echo "Examples:"
      echo "   --song-only       (to open music player)"
      echo "   -s                (to open music player)"
      echo "   --song+wallpaper  (to open music player and open img)"
      echo "   -S                (to open music player and open img)"
      echo "   --youtube         (to open at YouTube with Termux help) "
      echo "   -y                (to open at YouTube with Termux help) "
      echo "   --waiting         (displays current time and if Sadhguru Presence time 18:20 is found, run the song and image)"
      echo "   -P                (displays current time and if Sadhguru Presence time 18:20 is found, run the song and image)"
      echo "   <no args>         (to diaplay this message)"
   
   ;;
esac
