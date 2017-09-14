DNS_Project      
===========

#### INSTALLATION
So if you need to use this project, you must to follow these small recommendations:

 - Create a new image based on MYSQL and which will contain your schemas SQL (create_table.sql and insert.sql)  ``` docker build -t dns-mysql . ```

 - Run the docker-compose in order to create a container SQL based on the new image dns_mysql ``` docker-compose up -d ```

 - Last step, don't forget to run the container SQL with the command line ``` docker exec -it container_SQL mysql -p ``` 

