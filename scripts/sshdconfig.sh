#!/bin/bash

# Function to install OpenSSH server
install_openssh() {
    echo "OpenSSH server is not installed. Installing..."
    sudo yum install openssh-server -y
    echo "OpenSSH server installed."
}

# Check if OpenSSH server is installed
if ! rpm -q openssh-server &> /dev/null; then
    install_openssh
fi

# Change SSH port to 2202
sudo sed -i 's/#Port 2202/Port 22/' /etc/ssh/sshd_config
sudo systemctl restart sshd

echo "SSH port changed to 22."

