#!/bin/bash
# Copyright (c) 2016 Malicious Genius
#

cd /opt/microarch-custom
git pull
echo 'mothership ansible_connection=local' > /etc/ansible/hosts
ansible-playbook ./site.yml

sleep 5m
reboot