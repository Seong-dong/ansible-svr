#!/bin/bash

set -e

#ubuntu 20.04
echo "python 3.9 install"
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install -y python3.9

echo "### python 3.9 check ###"
python3.9 --version

echo "pip3 3 install"
apt-get install python3-pip

echo "### ansible install ###"
python3 -m pip install --upgrade --user ansible

echo "### /etc/hosts add ###"

echo "192.168.45.40 ansible-master" >> /etc/hosts
echo "192.168.45.41 ntp.sdjo.com" >> /etc/hosts
echo "192.168.45.42 nfs.sdjo.com" >> /etc/hosts
echo "192.168.45.43 repo.sdjo.com" >> /etc/hosts
#echo "192.168.45.44 idm.sdjo.com" >> /etc/hosts
echo "192.168.45.45 dir.sdjo.com" >> /etc/hosts

# ansible node 정보입력
echo "### node group & node ###"
mkdir /etc/ansible
echo "

