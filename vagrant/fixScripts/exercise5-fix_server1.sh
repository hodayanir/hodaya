#!/bin/bash
#add fix to exercise5-server1 here
echo Host * >> ~/.ssh/config
echo    StrictHostKeyChecking no >> ~/.ssh/config

sudo ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""

sudo apt-get install sshpass
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa*
sshpass -p 'vagrant' scp /home/vagrant/.ssh/id_rsa.pub vagrant@server2:/home/vagrant
