#!/bin/bash

echo "Installing snap packages..."
MY_PATH="$(dirname -- "${BASH_SOURCE[0]}")"
snap_packages="${MY_PATH}/../data/snap.txt"
while IFS= read -r line
do
   sudo snap install $line
done < "$snap_packages"
