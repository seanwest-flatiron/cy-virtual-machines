#!/bin/bash

rm -rf /root/.ssh

rm /etc/sudoers.d/vagrant
deluser --remove-home vagrant
rm /vagrant
