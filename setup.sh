#!/bin/bash

# Check for python 3
function check_py3(){
	command -v python3 >/dev/null 2>&1
}
check_py3
py3_exists=$?

if [$py3_exists != 0]
then
	echo "Python 3 not installed..."
	echo "Installing python3...."
	sudo apt install python3
fi

# Install favorite packages using apt

# Transfer files to appropriate locations
