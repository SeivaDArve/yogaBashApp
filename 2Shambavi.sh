#!/bin/bash

# Call color formating
# AND add an alias to change them
source ./all/textFormating/mainColorScheme

clrH_echoMenu () {
	clear
}
_start () {
	clear
	echo -e "\nThis is the menu Start"
       	echo "wait"
	sleep 1
	#firstMenu

}

# Menu for the View option
_view () {
	clear
	echo -e "\nThis is the menu View"
       	echo "wait"
	sleep 1
	#firstMenu

}




# Showing first menu and asking what to do
_firstMenu () {
clear
echo -e "${_red}Shambavi Bash App${_end}\n"
echo "Menu"
}
_firstMenu
_secondMenu () {
echo -e "(${_underG}S${_end}tart) (${_underG}V${_end}iew logs) (${_underG}Q${_end}uit)"

# Prompt which option And start Redirecting
echo -en "\nEnter Option > "; read _cursor
if [ $_cursor == q ]; then echo "stop"; exit; fi
if [ $_cursor == s ]; 
	then 
		echo "You choose S, Start"; 
		sleep 2
		_start
fi

if [ $_cursor == v ]; 
	then 
		echo "You choose V, View"; 
		sleep 2
		_view
fi
}
_firstMenu

