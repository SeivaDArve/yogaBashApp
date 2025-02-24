#!/bin/bash
# Title: 

# Shambavi Maha Mudra (app)
# Sadhguru Presence

# Colors now were repladed as a test. They now come from the boilerplate/ dir
   # uDev: test if drya repo exists, if not, an alternative should exist
   source ${v_REPOS_CENTER}/DRYa/all/lib/drya-lib-1-colors-greets.sh

   v_greet="Yoga"
   v_talk="Yoga: Shambavi: "

function f_shambavi_menu {

   # [fzf menu exemplo 1]
      # Menu Simples

      # Lista de opcoes para o menu `fzf`
         Lz1='Save '; Lz2='Y shamb'; Lz3="$Lz1\`$Lz2\`"; Lz4=$v_drya_fzf_menu_hist

         L5='5. Ver     | historico'
         L4='4. Ver     | Mandala (40x1 sess seguidas)(adulterado)'
         L3='3. Ver     | Mandala (40x2 sess seguidas)(original)'

         L2='2. Iniciar | Shambavi Maha Mudra'                                      
         L1='1. Cancel'

         L0="SELECIONE 1 do menu: "
         
         v_list=$(echo -e "$L1 \n$L2 \n\n$L3 \n$L4 \n$L5 \n\n$Lz3" | fzf --cycle --prompt="$L0")

         #echo "comando" >> ~/.bash_history && history -n
         #history -s "echo 'Olá, mundo!'"

      # Perceber qual foi a escolha da lista
         [[ $v_list =~ $Lz3  ]] && echo "$Lz2" && history -s "$Lz2"
         [[ $v_list =~ "5. " ]] && less ${v_REPOS_CENTER}/yogaBashApp/all/all-shambavi/shamb-dates.txt
         [[ $v_list =~ "4. " ]] && echo "uDev: $L4" 
         [[ $v_list =~ "3. " ]] && echo "uDev: $L3"
         [[ $v_list =~ "2. " ]] && echo "uDev: $L2"
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
         [[ $v_list =~ "2. " ]] && bash ${v_REPOS_CENTER}/yogaBashApp/sadhguru-presence.sh
         [[ $v_list =~ "1. " ]] && echo "Canceled: $Lz2" && history -s "$Lz2"
         unset v_list
}
	 

if [ -z $1 ]; then
   # Main menu
   f_main_menu

elif [ $1 == "test1" ]; then
   v_talk="Yoga: "
   f_Greet
   f_talk; echo "Testing libraries"
           echo

elif [ $1 == "test2" ]; then
   v_talk="Yoga: Shambavi: "
   f_Greet
   f_talk; echo "Testing libraries"
           echo

elif [ $1 == "h" ]; then
   echo "uDev: help menu"

elif [ $1 == "." ]; then
   f_main_menu

else 
   # If invalid arg is given, display some help
   f_greet
   echo "Invalid arg"
   echo ' > Try: `Y .` for main menu'
   echo ' > Try: `Y h` for help menu'

fi
