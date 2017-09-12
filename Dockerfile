FROM mysql

ADD script-insertSQL/* create_table.sql /docker-entrypoint-initdb.d/
