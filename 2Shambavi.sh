#!/bin/bash

clear








Smenu () {
echo -e "Shambavi Bash App\n"
echo "Menu"

echo -e "(S)tart \n(V)iew logs \n(Q)uit"
echo -e "\nEnter Option > "; read _cursor

if [ $_cursor == q ]; then echo "stop"; exit; fi
if [ $_cursor == s ]; then echo "bla"; fi
}
Smenu

