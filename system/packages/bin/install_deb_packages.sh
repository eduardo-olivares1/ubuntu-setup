#!/bin/bash

echo "Installing deb packages from URL..."
MY_PATH="$(dirname -- "${BASH_SOURCE[0]}")"
deb_packages="${MY_PATH}/../data/deb.txt"
while IFS= read -r line
do  
    #Create temp forlder in /tmp/tmp.UUID
	TEMP_DEB="$(mktemp)" &&
	wget -O "$TEMP_DEB" $line &&
	sudo dpkg -i "$TEMP_DEB"
	rm -f "$TEMP_DEB"
done < "$deb_packages"

apt --fix-broken install