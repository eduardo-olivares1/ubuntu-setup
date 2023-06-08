#!/bin/bash

#Install apt packages
apt_packages="../data/apt.txt"
while IFS= read -r line
do
	echo "Installing $line ..."
	sudo apt install $line -y
done < "$apt_packages"

