#!/bin/bash

rm -rf /root/.ssh

#delete temporary users
rm -rf /home/lebron #woops lol
rm /etc/sudoers.d/vagrant
deluser vagrant
rm -rf /home/vagrant
rm -rf /vagrant
