#!/bin/bash

# set up ssh
rm -rf /root/.ssh

# delete vagrant user
rm /etc/sudoers.d/vagrant
deluser vagrant
rm -rf /home/vagrant

