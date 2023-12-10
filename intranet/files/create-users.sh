#!/bin/bash

sudo useradd -m acme -s /bin/bash
echo 'acme:acme123' | sudo chpasswd
sudo mkdir ~acme/Documents ~acme/Downloads ~acme/Pictures
sudo usermod -aG sudo,adm,cdrom,lpadmin,sambashare acme
