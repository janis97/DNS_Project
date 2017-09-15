FROM mysql

ADD script-insertSQL/* create_table.sql /docker-entrypoint-initdb.d/

ENV DB_USER='janis' DB_PASSWD='root'
