set system host-name flatIronOS
set system login user flatiron authentication plaintext-password flatiron
set system login banner pre-login "Welcome to flatIronOS"
set system login banner post-login "flatIronOS"

set system syslog global facility all level info

del service
del system name-servers-dhcp
del interfaces ethernet eth0 hw-id
del interfaces ethernet eth0 address
