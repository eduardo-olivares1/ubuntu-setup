#!/bin/bash

echo "Installing apt packages..."
MY_PATH="$(dirname -- "${BASH_SOURCE[0]}")"

apt_packages="${MY_PATH}/../data/apt.txt"
while IFS= read -r line
do
	echo "Installing $line ..."
	sudo apt install $line -y
done < "$apt_packages"

