#!/bin/bash

rm -r ~/ejabberd/Mnesia*
sed -i "s/sl-xmpp-2/$1/g" ~/ejabberd/etc/ejabberd.cfg
sed -i "s/SL-XMPP-LB-361750198\.us-east-1\.elb\.amazonaws\.com/chat-aws-test\.socialites\.im/g" ~/ejabberd/etc/ejabberd.cfg
sed -i "s/{10,0,0,20}, {10,0,0,40}, {10,0,0,41}/{10,0,0,123}/g" ~/ejabberd/etc/ejabberd.cfg
sed -i "s/http:\/\/SL-WEB-LB-1106522057\.us-east-1\.elb\.amazonaws\.com/http:\/\/10\.0\.0\.132/g" ~/ejabberd/etc/ejabberd.cfg
sed -i "s/sl-xmpp-2/$1/g" ~/ejabberd/etc/vm.args
sudo sed -i "s/127\.0\.0\.1 sl-xmpp-2//g" /etc/hosts
#sudo sed -i "s/10\.0\.0\.7. sl-xmpp-.//g" /etc/hosts

echo "10.0.0.73 sl-xmpp-3" | sudo tee -a /etc/hosts
echo "10.0.0.74 sl-xmpp-4" | sudo tee -a /etc/hosts
echo "10.0.0.75 sl-xmpp-5" | sudo tee -a /etc/hosts
echo "10.0.0.76 sl-xmpp-6" | sudo tee -a /etc/hosts
echo "10.0.0.77 sl-xmpp-7" | sudo tee -a /etc/hosts

sudo ./change_host_name.sh $1

#~/ejabberd/bin/ejabberd start
#IS_RUNNING=`~/ejabberd/bin/ejabberdctl mnesia |grep is_running|awk -F, '{print $2}'|sed 's/}$//'`

#while [ "yes" != "$IS_RUNNING" ]
#do
#    sleep 2
#    echo "sleep & test mnesia"
#    IS_RUNNING=`~/ejabberd/bin/ejabberdctl mnesia |grep is_running|awk -F, '{print $2}'|sed 's/}$//'`
#done

#/home/ejabberd/ejabberd/bin/ejabberdctl mnesia_slave_dbsync ejabberd@sl-xmpp-1
#/home/ejabberd/ejabberd/bin/ejabberd restart
