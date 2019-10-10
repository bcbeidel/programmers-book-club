# Databases 101

https://stackoverflow.com/questions/21900185/what-are-oltp-and-olap-what-is-the-difference-between-them

- **OLTP (On-line Transaction Processing):** is involved in the operation of a particular system. OLTP is characterized by a large number of short on-line transactions (INSERT, UPDATE, DELETE). The main emphasis for OLTP systems is put on very fast query processing, maintaining data integrity in multi-access environments and an effectiveness measured by number of transactions per second. In OLTP database there is detailed and current data, and schema used to store transactional databases is the entity model (usually 3NF). It involves Queries accessing individual record like Update your Email in Company database.

- **OLAP (On-line Analytical Processing):** deals with Historical Data or Archival Data. OLAP is characterized by relatively low volume of transactions. Queries are often very complex and involve aggregations. For OLAP systems a response time is an effectiveness measure. OLAP applications are widely used by Data Mining techniques. In OLAP database there is aggregated, historical data, stored in multi-dimensional schemas (usually star schema). Sometime query need to access large amount of data in Management records like what was the profit of your company in last year.

## RDS: Relational Databases on AWS (OLTP)

- SQL Server
- Oracle
- MySQL Server
- PostgresSQL
- Aurora
- MariaDB

RDS has two key features

- Multi-AZ - For disaster recovery
    - Fail over is automatic to alternate DB
- Read Replicas - For performance
    - Fail over not automatic, you would need a new 
    - Up to 5 copies

## NoSQL 

Amazon's offering for NoSQL is Dynamo DB

## Red Shift (OLAP) 

Cloud-Based Data Warehouse Solution

## Elasti-Cache

Web Service that makes it easy to deploy, operate and scale in-memory cache in the cloud, rather than relying entirely on slower disk-based databases.  i.e., handle frequent, identical queries


## Additional Notes

- RDS runs on Virtual Machines
- You cannot log into the Operating Systems
- Patching of the RDS Operating is Amazons 
- RDS is not serverless
- Aurora is serverless

## Read Replicas

- Can be Multi-AZ
- Used to increase performance
- Must have backups turned on
- Can be in different regions
- Can be MySQL, PostgreSQL, MariaDB, Oracle, Aurora
- Can be promoted to master, will break read replica

## Multi-AZ

- Used for disaster recovery
- You can trigger fail-over by rebooting the instance