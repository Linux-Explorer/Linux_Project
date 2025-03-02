#!/bin/bash

# Install EPEL repository
sudo dnf install -y epel-release

# Install xrdp
sudo dnf install -y xrdp

# Start and enable xrdp service
sudo systemctl start xrdp
sudo systemctl enable xrdp

# Allow RDP traffic through FirewallD (if enabled)
sudo firewall-cmd --permanent --zone=public --add-port=3389/tcp
sudo firewall-cmd --reload

echo "xrdp has been installed and enabled. You can now connect to your CentOS 9 system using a Remote Desktop client."
