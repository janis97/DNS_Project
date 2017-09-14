#!/bin/bash

DB_USER='janis';
DB_PASSWD='root';

mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME<<EOF

USE DNS_Project;
INSERT INTO domain (\`name\`) VALUES ("mirakl.net");

EOF


