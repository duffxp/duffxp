#!/bin/bash

echo -e "Installing Flatpak package...\n"
sudo apt install flatpak

echo -e "Configuring Flathub...\n"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo ""
read -p 'Do you want to install some apps now? (no, yes) ' reply

check_apps(){
	echo -e "\nApps list:"
	cat flatpak-apps.txt
}

its_done(){
	echo ""
	read -p 'OK. It should be good to restart system. So? (no, yes) ' reply
	if [ $reply == 'yes' ]; then
		echo -e "\nOkay, restating..."
		sudo shutdown -r now
	else
		echo -e "\nOkay. Have a good day!\n"
	fi
}

double_confirmation(){
	echo ""
	read -p 'Would you like to install this list? (no, yes) ' new_reply
	if [ "$new_reply" == 'yes' ]; then
		echo -e "\nOkay, follow the next steps to install.\n"
		flatpak install flathub $(< flatpak-apps.txt)
		its_done
	else
		echo -e "\nOkay, aborting."
		echo -e "Have a good day!\n"
	fi
}

if [ "$reply" == 'yes' ]; then
	check_apps
	double_confirmation
else
	echo -e "\nOkay, we can install it later."
	echo -e "Have a good day!\n"
fi

