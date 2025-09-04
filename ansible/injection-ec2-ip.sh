#!/bin/bash
ip=$(cat ec2_ip.txt)
echo "[ubuntu]" > inventory.ini
echo "$ip ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/TerraformKey.pem" >> inventory.ini
