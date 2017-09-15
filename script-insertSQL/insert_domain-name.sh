#!/bin/bash

mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME<<EOF

USE DNS_Project;

INSERT INTO domain (\`name\`) VALUES ("mirakl.net");

EOF
