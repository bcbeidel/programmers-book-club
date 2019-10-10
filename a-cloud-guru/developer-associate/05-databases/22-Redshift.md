# Redshift

Redshift is a fully managed, petabyte scale data-warehouse service.  (OLAP)

## Redshift Configuration

- Single Node (160 Gb)
- Multi-Node
    - Leader Node (managed connections and receives query)
    - Compute Node (store data and perform queries and computations), up to 128 compute nodes.

## Advanced Features

- Significant compression rates compared to traditional Relational DBs 
- Massively Parallel Processing
- Backups
    - Backups by default with 1 day retention
    - Maximum backup retention of 35
    - Attempts to maintain 3 copies of data
        - original
        - replica on compute nodes
        - backup on s3
    - Can replicate async to another region for disaster recovery 

- Pricing
    - on compute-node hours
    - on backups
    - on data transfers

- Security
    - Encrypted in transit - SSL
    - Encrypted at rest - AES-256
    - Default Key management is taken care of

## Exam Tips

- Redshift is for Business Intelligence
- Available in only 1 AZ
- Backups
    - Enabled by default, 1 day retention
    - Max retention, 35 days
    - Tries to maintain 3 copies, original, replica on compute node, and s3
    - async replication to other regions for disaster recovery
