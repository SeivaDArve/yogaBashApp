#!/data/data/com.termux/files/usr/bin/bash
clear

# Esta app diz Welcome + Redirecionar para Extras
# This app is the node





echo "Welcomo to Shambavi Maha Mudra"
echo ""
echo "choose your option, ok?"

PS1='Please enter yourr choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"

do
	case $opt in
		"Option 1")
			echo "you chose choice 1"
			;;

		"Option 2")
				echo "you chose choice 2"
				;;

			"Option 3")
				echo "you chose choice 2"
				;;

			"Quit")
				break
				;;

			*) 	echo "invalid option" $REPLY;;
		esac
	done
	
