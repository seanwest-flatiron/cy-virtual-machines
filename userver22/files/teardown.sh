#!/bin/bash

rm -rf /root/.ssh

deluser --remove-home ubuntu
rm /etc/sudoers.d/90-cloud-init-users

rm /etc/sudoers.d/vagrant
deluser --remove-home vagrant
rm /vagrant
