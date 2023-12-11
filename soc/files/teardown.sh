#!/bin/bash

# disable ssh
rm -rf /root/.ssh
systemctl disable ssh

# delete vagrant user
rm /etc/sudoers.d/vagrant
deluser vagrant
rm -rf /home/vagrant
