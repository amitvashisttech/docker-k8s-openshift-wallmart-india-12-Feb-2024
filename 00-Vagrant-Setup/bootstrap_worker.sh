#!/bin/bash

# Getting Ready for DevOps & Ansible 
echo "[TASK 1] Join node to Kubernetes Cluster"
apt-get update > /dev/null 2>&1
apt-get install -q -y sshpass python > /dev/null 2>&1


# Enable ssh password authentication
echo "[TASK 2] Enable ssh password authentication"
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
systemctl reload sshd
