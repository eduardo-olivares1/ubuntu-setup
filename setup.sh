#!/bin/bash

# Update and upgrade
sudo apt update && sudo apt upgrade

# Install system wide prefrences and packages
./system/system.sh

# Install user prefrences and packages
./user/user.sh