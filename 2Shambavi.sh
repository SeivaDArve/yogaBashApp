#!/bin/bash

# Call color formating
# AND add an alias to change them
source ./all/textFormating/mainColorScheme


# Showing first menu and asking what to do
firstMenu () {
clear
echo -e "${_red}Shambavi Bash App${_end}\n"
echo "Menu"
echo -e "${_underG}S${_end}tart (V)iew logs (Q)uit"

# Prompt which option And start Redirecting
echo -en "\nEnter Option > "; read _cursor
if [ $_cursor == q ]; then echo "stop"; exit; fi
if [ $_cursor == s ]; 
	then 
		echo "You choose S, Start"; 
		sleep 2
fi
}
firstMenu

