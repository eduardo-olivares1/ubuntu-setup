#!/bin/bash

# Update
sudo apt install update && sudo apt install upgrade

# Install system wide prefrences and packages
./system/system.sh

# Install user prefrences and packages
./user/user.sh