#!/bin/bash

######### Install mongos
#  NOTE apply 10gen.pp first
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
sudo apt-get update
sudo apt-get install mongodb-10gen

## Now the test file

#    If the redirection operator is <<-, then all leading tab
#    characters are stripped from input lines and the line
#    containing delimiter.  This allows here-documents within
#    shell scripts to be indented in a natural fashion.

# the mongo init file
cat>/etc/init/mongos.conf <<-EOF
		# Ubuntu upstart file at /etc/init/mongos.conf

		limit nofile 20000 20000

		kill timeout 300 # wait 300s between SIGTERM and SIGKILL.

		start on runlevel [2345]
		stop on runlevel [06]

		script
		    exec start-stop-daemon --make-pidfile --pidfile /var/run/mongos.pid  --start --quiet --chuid mongodb --exec  /usr/bin/mongos -- --config /etc/mongos.conf; fi
		    fi
		end script
EOF

#the mongos conf file
cat>/etc/mongos.conf <<-EOF

	# /etc/mongos.conf
	#mongos config file
	 
	#config servers
	configdb=sl-mongodb-config-1:27019,sl-mongodb-config-2:27019,sl-mongodb-config-3:27019
	 
	#where to log
	logpath=/var/log/mongodb/mongos.log
	 
	#log overwritten or appended to
	logappend=true
	 
	#override port
	#port=27017
EOF

# Now attach the upstart script
ln -s /lib/init/upstart-job /etc/init.d/mongos

# start on bootup
#sudo apt-get install sysv-rc-conf
#sysv-rc-conf mongos on
#chkconfig -s mongos on
#update-rc.d mongos defaults
sudo update-rc.d -f mongos start 20 2 3 4 5 . stop 80 0 1 6 .
# To start services use:
# service mongos [start|stop|restart]

# but down mongodb
echo "manual" >> /etc/init/mongodb.override


