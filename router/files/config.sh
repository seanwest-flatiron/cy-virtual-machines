set nat source rule 100 outbound-interface eth0
set nat source rule 100 source address 192.168.10.0/24
set nat source rule 100 translation address masquerade

set nat source rule 101 outbound-interface eth0
set nat source rule 101 source address 192.168.20.0/24
set nat source rule 101 translation address masquerade

set nat source rule 102 outbound-interface eth0
set nat source rule 102 source address 192.168.30.0/24
set nat source rule 102 translation address masquerade

set service dhcp-server shared-network-name internal10 subnet 192.168.10.0/24 default-router 192.168.10.1
set service dhcp-server shared-network-name internal10 subnet 192.168.10.0/24 lease 86400
set service dhcp-server shared-network-name internal10 subnet 192.168.10.0/24 dns-server 1.1.1.1
set service dhcp-server shared-network-name internal10 subnet 192.168.10.0/24 dns-server 8.8.8.8
set service dhcp-server shared-network-name internal10 subnet 192.168.10.0/24 range 0 start 192.168.10.200
set service dhcp-server shared-network-name internal10 subnet 192.168.10.0/24 range 0 stop 192.168.10.250

set service dhcp-server shared-network-name internal20 subnet 192.168.20.0/24 default-router 192.168.20.1
set service dhcp-server shared-network-name internal20 subnet 192.168.20.0/24 lease 86400
set service dhcp-server shared-network-name internal20 subnet 192.168.20.0/24 dns-server 1.1.1.1
set service dhcp-server shared-network-name internal20 subnet 192.168.20.0/24 dns-server 8.8.8.8
set service dhcp-server shared-network-name internal20 subnet 192.168.20.0/24 range 0 start 192.168.20.200
set service dhcp-server shared-network-name internal20 subnet 192.168.20.0/24 range 0 stop 192.168.20.250

set service dhcp-server shared-network-name internal30 subnet 192.168.30.0/24 default-router 192.168.30.1
set service dhcp-server shared-network-name internal30 subnet 192.168.30.0/24 lease 86400
set service dhcp-server shared-network-name internal30 subnet 192.168.30.0/24 dns-server 1.1.1.1
set service dhcp-server shared-network-name internal30 subnet 192.168.30.0/24 dns-server 8.8.8.8
set service dhcp-server shared-network-name internal30 subnet 192.168.30.0/24 range 0 start 192.168.30.200
set service dhcp-server shared-network-name internal30 subnet 192.168.30.0/24 range 0 stop 192.168.30.250

set service ssh listen-address 192.168.10.1
set service ssh listen-address 192.168.20.1
set service ssh listen-address 192.168.30.1

del interfaces ethernet eth0 hw-id
del interfaces ethernet eth1 hw-id
del interfaces ethernet eth2 hw-id
del interfaces ethernet eth3 hw-id
