#!/bin/bash

sudo add-apt-repository ppa:semiosis/ubuntu-glusterfs-3.4
sudo apt-get remove glusterfs-client
sudo apt-get autoremove
sudo apt-get install glusterfs-client
#sudo mkdir /glusterfs

#echo "10.0.0.200 sl-gluster-1" | sudo tee -a /etc/hosts
#echo "sl-gluster-1:/media /glusterfs glusterfs defaults,_netdev 0 0" | sudo tee -a /etc/fstab

#mount /glusterfs
