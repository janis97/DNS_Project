FROM mysql

ADD create_table.sql /docker-entrypoint-initdb.d/

ENV DB_USER='janis' DB_PASS='root'
