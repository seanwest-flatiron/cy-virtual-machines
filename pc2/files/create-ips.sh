#!/bin/bash

# Disable IPv6 for enp0s3
nmcli con mod "Wired connection 1" ipv6.method ignore

# Clear existing IPv4 configuration for enp0s3 and set multiple IP addresses
nmcli con mod "Wired connection 1" ipv4.addresses "192.168.10.50/24,192.168.10.180/24,192.168.10.181/24,192.168.10.20/24,192.168.10.25/24,192.168.10.52/24,192.168.10.90/24"

# Set Gateway and DNS for enp0s3
nmcli con mod "Wired connection 1" ipv4.gateway 192.168.10.1
nmcli con mod "Wired connection 1" ipv4.dns 192.168.10.1

# Set IPv4 method to manual for enp0s3
nmcli con mod "Wired connection 1" ipv4.method manual

# Have to up the metric so the VM prefers the NAT connection for now
nmcli con mod "Wired connection 1" ipv4.route-metric 102

# Apply the configuration to enp0s3
nmcli con up "Wired connection 1"
