#!/bin/bash

# set up ssh
rm -rf /root/.ssh
echo 'ListenAddress 192.168.20.100' | tee -a  /etc/ssh/sshd_config
# ssh sometimes tries to bind to ip before network is up
sed -i 's/network.target/network-online.target/' /etc/systemd/system/sshd.service
echo 'net.ipv4.ip_nonlocal_bind=1' | tee -a /etc/sysctl.conf
systemctl daemon-reload
# our connection should still be protected
systemctl restart ssh

# delete vagrant user
rm /etc/sudoers.d/vagrant
deluser vagrant
rm -rf /home/vagrant

