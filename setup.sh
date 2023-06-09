#!/bin/bash

# Update
sudo apt-get update && sudo apt apt-get upgrade

# Install system wide prefrences and packages
./system/system.sh

# Install user prefrences and packages
./user/user.sh