#!/bin/bash

apt-get install build-essential
apt-get install libfuse-dev
apt-get install fuse-utils
apt-get install libcurl4-openssl-dev
apt-get install libxml2-dev
apt-get install mime-support

pushd .

cd /tmp
wget http://downloads.sourceforge.net/project/fuse/fuse-2.X/2.9.3/fuse-2.9.3.tar.gz?ts=1374080945&use_mirror=tenet

tar xvzf fuse-2.9.3.tar.gz
cd fuse-2.9.3/
./configure
make
sudo make install

cd /tmp
wget http://s3fs.googlecode.com/files/s3fs-1.73.tar.gz
tar xvzf s3fs-1.73.tar.gz
cd s3fs-1.73/
./configure --prefix=/usr
make
sudo make install

popd


