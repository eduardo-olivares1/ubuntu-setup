#!/bin/bash

#Install deb packages from URL
deb_packages="../data/deb.txt"
while IFS= read -r line
do  
    #Create temp forlder in /tmp/tmp.UUID
	TEMP_DEB="$(mktemp)" &&
	wget -O "$TEMP_DEB" $line &&
	sudo dpkg -i "$TEMP_DEB"
	rm -f "$TEMP_DEB"
done < "$deb_packages"

apt --fix-broken install