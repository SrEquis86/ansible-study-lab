#!/bin/bash
# Post creation tasks for server
AnsiblePassword='ansible'
useradd srv_ansible
echo $AnsiblePassword | passwd srv_ansible --stdin;
ssh-keygen -b 2048 -t rsa -f /home/srv_ansible/.ssh/id_rsa -q -N "" -C 'srv_ansible@ansible-controller-node'

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
systemctl reload sshd.service

yum install nmap -y

for remote_host in $(nmap -sP 172.0.0.0/24 | grep 172. | awk '{print $6}' | tr "(" " " | tr ")" " ")
do
echo $AnsiblePassword | ssh-copy-id -i /home/srv_ansible/.ssh/id_rsa.pub srv_ansible@$remote_hosts


