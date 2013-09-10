#!/bin/bash

sudo tee -a /etc/security/limits.conf <<-EOF
	mongodb  soft  nofile 65000
	mongodb  hard  nofile 100000
	root  soft  nofile 65000
	root  hard  nofile 100000
EOF

sudo tee -a /etc/pam.d/common-session <<-EOF
	session required pam_limits.so
EOF
