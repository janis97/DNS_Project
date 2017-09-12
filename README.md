DNS_Project      
===========

#### INTRODUCTION
After 5 years of existence, Mirakl has been hosting many environments for its cutomers. Some of these environments have been created long ago, while some are very recent. Some environments have been deleted for a long time, while other are unused but still up.

Each and every one is accessed through HTTP, and as such needs its own DNS name. Often the environment deletion has left behind a DNS record that is no longer needed. 

The first objective of this project is to list DNS records that could deleted.

#### INSTALLATION
So if you need to use this project, you must to follow these small recommendations:

 - Create a new image based on MYSQL and which will contain your schemas SQL (create_table.sql and insert.sql)  ``` docker build -t dns-mysql . ```
 - After that, open the docker-compose's file and modify some informations
 
 ``` environment:
            MYSQL_ROOT_PASSWORD: ROOT_PASSWORD
            ...
            MYSQL_USER: DB_USER
            MYSQL_PASSWORD: USER_PASSWORD
 ```
 
 - Run the docker-compose in order to create a container SQL based on the new image dns_mysql ``` docker-compose up -d ```
 - Last step, don't forget to run the container SQL with the command line ``` docker exec -it container_SQL mysql -p ``` 

#### USE
Here are some useful queries:

 - To list the types of fittings and the quantity of each type ``` select type,count(type) from record where type='A' or type='CNAME' group by type; ``` 
 - To list the domain names that are hosted in kube (ALIAS to kube-dev-eu-1-node-1001782691.eu-west-1.elb.amazonaws.com) ``` select value,count(value) from record where value='kube-dev-eu-1-node-1001782691.eu-west-1.elb.amazonaws.com.' group by value; ```

Let's go :smiley:

