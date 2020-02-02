#! /bin/bash
cat>/etc/yum.repos.d/mongodb-org-4.0.repo<<EOF
[mongodb-org-4.0]
name = MongoDB Repository
baseurl = https://repo.mongodb.org/yum/redhat/\$releasever/mongodb-org/4.0/x86_64/
gpgcheck = 1
enabled = 1
gpgkey = https://www.mongodb.org/static/pgp/server-4.0.asc
EOF
yum makecache
sudo yum install -y mongodb-org
