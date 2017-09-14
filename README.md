DNS_Project      
===========

#### USE
Here are some useful queries:

 - To list the types of fittings and the quantity of each type ``` select type,count(type) from record where type='A' or type='CNAME' group by type; ``` 
 - To list the domain names that are hosted in kube (ALIAS to kube-dev-eu-1-node-1001782691.eu-west-1.elb.amazonaws.com) ``` select value,count(value) from record where value='kube-dev-eu-1-node-1001782691.eu-west-1.elb.amazonaws.com.' group by value; ```
