#!/bin/bash

sudo apt-get install glusterfs-client
sudo mkdir /glusterfs

echo "10.0.0.110 sl-gluster-1" | sudo tee -a /etc/hosts
echo "sl-gluster-1:/testvol /glusterfs glusterfs defaults,_netdev 0 0" | sudo tee -a /etc/fstab

mount /glusterfs
