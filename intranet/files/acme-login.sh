#!/bin/bash

# The following commands will ensure that only the Acme
# User is presented during graphical login

# Clear the existing sddm.conf file
rm /etc/sddm.conf

# Append new settings to /etc/sddm.conf
echo "[Autologin]" >> /etc/sddm.conf
echo "Session=Lubuntu" >> /etc/sddm.conf
echo "" >> /etc/sddm.conf
echo "[Users]" >> /etc/sddm.conf
echo "MaximumUid=$(id -u webadmin)" >> /etc/sddm.conf
echo "MinimumUid=$(id -u webadmin)" >> /etc/sddm.conf
echo "RememberLastUser=false" >> /etc/sddm.conf
