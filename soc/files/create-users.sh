#!/bin/bash

sudo useradd -m roadrunner -s /bin/bash
echo 'roadrunner:b33pb33p!' | sudo chpasswd
sudo usermod -aG adm,dialout,cdrom,floppy,sudo,audio,dip,video,plugdev,netdev,bluetooth,scanner,vboxsf,kaboxer,wireshark roadrunner
