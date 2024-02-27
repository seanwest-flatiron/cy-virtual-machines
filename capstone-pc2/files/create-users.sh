#!/bin/bash

sudo useradd -m acme -s /bin/bash
echo 'acme:goACME2024' | sudo chpasswd
sudo mkdir ~acme/Documents
sudo chown acme:acme -R ~acme

sudo useradd -m moe -s /bin/bash
echo 'moe:paris^cheetos^puppy' | sudo chpasswd
sudo usermod -aG sudo,adm,cdrom,lpadmin moe
echo "moe ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/moe_nopasswd
sudo chmod 0440 /etc/sudoers.d/moe_nopasswd

sudo useradd -m rhoward -s /bin/bash
echo 'rhoward:WUPHF.com.whenever.wherever' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare rhoward

sudo useradd -m dwallace -s /bin/bash
echo 'dwallace:RachelTeddyWhistleblower' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare dwallace

sudo useradd -m mscott -s /bin/bash
echo 'mscott:IBoughtACondo0315' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare mscott

sudo useradd -m tflenderson -s /bin/bash
echo 'tflenderson:OutOfTheAnnexandOffToCostaRica' | sudo chpasswd

sudo useradd -m scarmichael -s /bin/bash
echo 'scarmichael:HipHopis4EVA!' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare scarmichael

sudo useradd -m apickles -s /bin/bash
echo 'apickles:IWishIHadABabySister' | sudo chpasswd

sudo useradd -m svshane -s /bin/bash
echo 'svshane:!!SenorJumpingBean!!' | sudo chpasswd

sudo useradd -m cfinster -s /bin/bash
echo 'cfinster:IamAllergictoDandelions' | sudo chpasswd

sudo useradd -m pdeville -s /bin/bash
echo 'pdeville:AnythingThatMakesYouThrowUpHasGotToBeGood!' | sudo chpasswd

sudo useradd -m rsanchez -s /bin/bash
echo 'rsanchez:IlovePlanet$butHateCages' | sudo chpasswd

sudo useradd -m msmith -s /bin/bash
echo 'msmith:IAmthe"Morty-est"Morty' | sudo chpasswd

sudo useradd -m wcoyote -s /bin/bash
echo 'wcoyote:DonCoyoteJokisCallbackus' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare wcoyote

sudo useradd -m sgonzales -s /bin/bash
echo 'sgonzales:HolyFrijolesAndaleArribaArriba' | sudo chpasswd

sudo useradd -m plepew -s /bin/bash
echo 'plepew:TheLocksmithofL0ve' | sudo chpasswd

sudo useradd -m fleghorn -s /bin/bash
echo 'fleghorn:ThatDogisaGibberingIdiot' | sudo chpasswd

sudo useradd -m ysam -s /bin/bash
echo 'ysam:Dadburnslapstickcliche' | sudo chpasswd
