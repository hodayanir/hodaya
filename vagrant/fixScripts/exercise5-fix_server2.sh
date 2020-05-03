#!/bin/bash
#add fix to exercise5-server2 here
mv /home/vagrant/id_rsa.pub ~/.ssh
cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
