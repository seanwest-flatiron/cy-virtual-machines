sudo useradd -s /bin/bash -m acme
echo 'acme:acme123' | sudo chpasswd

# do not currently know acmecompany's password so taking it's hash from /etc/passwd
sudo useradd -s /bin/bash -m -p '$y$j9T$kBpQJuLATQZgJbOx21r3t/$DNQqohFEoCO32yikeuaUfj0LvBrKTT4bb0v8/ml7cl/' acmecompany

# temporary
sudo useradd -s /bin/bash -m admin
echo 'admin:admin' | sudo chpasswd
###################################

sudo useradd -s /bin/bash -m efudd
echo 'efudd:darnth0sewabbits' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare efudd

sudo useradd -s /bin/bash -m triddle
echo 'triddle:Pierre1009' | sudo chpasswd

sudo useradd -s /bin/bash -m amac
echo 'amac:Anvil$&AxelGre@se' | sudo chpasswd

sudo useradd -s /bin/bash -m admin1
echo 'admin1:qwerty123' | sudo chpasswd

# the rest of the users are added to the users group and don't use bash

sudo useradd -m -g users albusd
echo 'albusd:Snape!Snape!SeverusSnape' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare albusd

sudo useradd -m -g users minervam
echo 'minervam:Imp3rio' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare minervam

sudo useradd -m -g users pamonas
echo 'pamonas:puffapods' | sudo chpasswd

sudo useradd -m -g users rubeush
echo 'rubeush:OGOoftheP' | sudo chpasswd

sudo useradd -m -g users severuss
echo 'severuss:Dumbledor3!' | sudo chpasswd
sudo usermod -aG sudo,adm,lpadmin,sambashare severuss

sudo useradd -m -g users lilye
echo 'lilye:Petunia' | sudo chpasswd

sudo useradd -m -g users jamesp
echo 'jamesp:LilyLilyLily' | sudo chpasswd
