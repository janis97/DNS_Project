#!/bin/bash

#This script allows to insert the DNS entries into table record.

FILE='/docker-entrypoint-initdb.d/route_53-miraklnet.txt';

DOMAIN_ID=$(mysql --user=$DB_USER --password=$DB_PASS DNS_Project -s <<EOF

SELECT id FROM domain;

EOF
)

while IFS= read -r LINE
do

    NAME_CUT=$(echo $LINE | awk '{print $1}')
    TTL_CUT=$(echo $LINE | awk '{print $2}')
    TYPE_CUT=$(echo $LINE | awk '{print $(NF-1)}')
    VALUE_CUT=$(echo $LINE | awk '{print $(NF-2)}')

mysql --user=$DB_USER --password=$DB_PASS DNS_Project -s <<EOF

INSERT INTO record (\`domain_id\`,\`name\`,\`type\`,\`value\`,\`ttl\`) VALUES ('$DOMAIN_ID','$NAME_CUT','$TYPE_CUT','$VALUE_CUT','$TTL_CUT');

EOF

done < "$FILE"
