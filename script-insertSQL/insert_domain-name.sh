#!/bin/bash

#This script allows to insert the domain name into table domain.

mysql --user=$DB_USER --password=$DB_PASS DNS_Project<<EOF

INSERT INTO domain (\`name\`) VALUES ("mirakl.net");

EOF
