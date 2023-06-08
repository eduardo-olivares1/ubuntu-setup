#!/bin/bash

#Install snap packages
snap_packages="../data/snap.txt"
while IFS= read -r line
do
   sudo snap install $line
done < "$snap_packages"
