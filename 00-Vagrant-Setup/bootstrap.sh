#!/bin/bash

# Update hosts file
echo "[TASK 1] Update /etc/hosts file"
cat >>/etc/hosts<<EOF
172.31.0.100 master.example.com master
172.31.0.101 worker1.example.com worker1
172.31.0.102 worker2.example.com worker2
EOF


# Install Kubernetes
echo "[TASK 2] Install Base Packages SSHPASS & Python"
apt-get update >/dev/null 2>&1
apt-get install -y  sshpass python wget >/dev/null 2>&1


# Enable ssh password authentication
echo "[TASK 3] Enable ssh password authentication"
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
systemctl reload sshd

# Update vagrant user's bashrc file
echo "export TERM=xterm" >> /etc/bashrc