#!/bin/bash

rm -r /home/ejabberd/ejabberd/Mnesia*
sed -i "s/sl-xmpp-2/$1/g" /home/ejabberd/ejabberd/etc/ejabberd.cfg
sed -i "s/SL-XMPP-LB-361750198\.us-east-1\.elb\.amazonaws\.com/chat-aws-test\.socialites\.im/g" /home/ejabberd/ejabberd/etc/ejabberd.cfg
sed -i "s/{10,0,0,20}, {10,0,0,40}, {10,0,0,41}/{10,0,0,123}/g" /home/ejabberd/ejabberd/etc/ejabberd.cfg
sed -i "s/http:\/\/SL-WEB-LB-1106522057\.us-east-1\.elb\.amazonaws\.com/http:\/\/10\.0\.0\.132/g" /home/ejabberd/ejabberd/etc/ejabberd.cfg
sed -i "s/sl-xmpp-2/$1/g" /home/ejabberd/ejabberd/etc/vm.args
/home/ejabberd/ejabberd/bin/ejabberd start
/home/ejabberd/ejabberd/bin/ejabberdctl mnesia_slave_dbsync ejabberd@sl-xmpp-1
/home/ejabberd/ejabberd/bin/ejabberd restart
