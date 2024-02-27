#!/bin/bash

sudo useradd -m webadmin -s /bin/bash
echo 'webadmin:Acme@20anvil' | sudo chpasswd
sudo usermod -aG sudo,adm,cdrom,lpadmin webadmin
sudo mkdir ~webadmin/{Documents,Downloads,Desktop,Pictures,Videos}
sudo chown webadmin:webadmin ~webadmin

sudo useradd -m moe -s /bin/bash
echo 'moe:paris^cheetos^puppy' | sudo chpasswd
sudo usermod -aG sudo,adm,cdrom,lpadmin moe
echo "moe ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/moe_nopasswd
sudo chmod 0440 /etc/sudoers.d/moe_nopasswd
