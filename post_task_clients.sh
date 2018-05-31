#!/bin/bash
# Post creation tasks for clients
AnsiblePassword='ansible'
useradd srv_ansible
echo $AnsiblePassword | passwd srv_ansible --stdin;

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
systemctl reload sshd.service
