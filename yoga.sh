#!/bin/bash
# Title: 

# Shambavi Maha Mudra (app)
# Sadhguru Presence

function f_greet {
   clear
   figlet Yoga
}

function f_talk {
   # Copied from: ezGIT
         echo
   f_c4; echo -n "DRYa: "
   f_rc
}

function f_c1 {	
   # This function is to be used when something is SEARCHED
   tput setaf 5 
}

function f_c2 { 
   tput setaf 2 
}

function f_c3 { 
   # Mentioning user input or valiable input
   # This function is to be used when something is DECLAIRED
   tput setaf 3
}

function f_c4 { 
   # Similar to Bold. Used in: f_talk
   # This function is to be used when something is ASKED
   tput setaf 4
}

function f_c5 { 
   # Similar to Bold
   tput setaf 6
}

function f_c6 { 
   # Used for ASCII Drya Logo, centered to the screen
   tput setaf 28
   tput bold
}

function f_rc { 
   # This function is to be used when styles are to be CLEARED
   tput sgr0
}

function f_shambavi_menu {

   # [fzf menu exemplo 1]
      # Menu Simples

      # Lista de opcoes para o menu `fzf`
         Lz1='Save '; Lz2='Y shamb'; Lz3="$Lz1\`$Lz2\`"; Lz4=$v_drya_fzf_menu_hist

         L4='4. Visualizar historico'
         L3='3. Visualizar Mandala'
         L2='2. Iniciar | Shambavi Maha Mudra'                                      
         L1='1. Cancel'

         L0="SELECIONE 1 do menu: "
         
         v_list=$(echo -e "$L1 \n$L2 \n$L3 \n$L4 \n\n$Lz3" | fzf --cycle --prompt="$L0")

         #echo "comando" >> ~/.bash_history && history -n
         #history -s "echo 'Olá, mundo!'"

      # Perceber qual foi a escolha da lista
         [[ $v_list =~ $Lz3  ]] && echo "$Lz2" && history -s "$Lz2"
         [[ $v_list =~ "4. " ]] && less ${v_REPOS_CENTER}/yogaBashApp/all/all-shambavi/shamb-dates.txt
         [[ $v_list =~ "3. " ]] && echo "uDev: $L3" && sleep 0.1 
         [[ $v_list =~ "2. " ]] && echo "uDev: $L2" && sleep 0.1 
         [[ $v_list =~ "1. " ]] && echo "Canceled: $Lz2" && history -s "$Lz2"
         unset v_list
}
	 

function f_main_menu {

   # [fzf menu exemplo 1]
      # Menu Simples

      # Lista de opcoes para o menu `fzf`
         Lz1='Save '; Lz2='Y'; Lz3="$Lz1\`$Lz2\`"; Lz4=$v_drya_fzf_menu_hist

         L3='3. Menu | Shambavi Maha Mudra'                                      
         L2='2. Menu | Sadhguru Presence'                                      
         L1='1. Cancel'

         L0="SELECIONE 1 do menu: "
         
         v_list=$(echo -e "$L1 \n$L2 \n$L3 \n\n$Lz3" | fzf --cycle --prompt="$L0")

         #echo "comando" >> ~/.bash_history && history -n
         #history -s "echo 'Olá, mundo!'"

      # Perceber qual foi a escolha da lista
         [[ $v_list =~ $Lz3  ]] && echo "$Lz2" && history -s "$Lz2"
         [[ $v_list =~ "3. " ]] && f_shambavi_menu
         [[ $v_list =~ "2. " ]] && echo "uDev: $L2" && sleep 0.1 
         [[ $v_list =~ "1. " ]] && echo "Canceled: $Lz2" && history -s "$Lz2"
         unset v_list
}
	 

if [ -z $1 ]; then
   # If no arg is given, display some help
   echo "No arg given"
   echo ' > Try: `Y .` for main menu'
   echo ' > Try: `Y h` for help menu'

elif [ $1 == "h" ]; then
   echo "uDev: help menu"

elif [ $1 == "." ]; then
   f_main_menu

else 
   # If invalid arg is given, display some help
   echo "No arg given"
   echo ' > Try: `Y .` for main menu'
   echo ' > Try: `Y h` for help menu'

fi
