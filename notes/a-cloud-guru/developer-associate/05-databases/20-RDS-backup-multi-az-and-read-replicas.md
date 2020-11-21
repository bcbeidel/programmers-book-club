# RDS Notes

## RDS Backups

Two different types of backups:
- **Automated Backups:** Allow you to revert your DB to any point in time during the retention window
    - retention can be between 1 and 35 days
    - a full snapshot will be taken once per day
    - On recovery, AWS starts with last full snapshot, and adds incremental changes within retention period
    - Enabled by default
    - Backups are stored in S3
    - Storage equal to size of DB
- **Database Snapshots:** User initiated copies of DB
    - will be retained even if original DB is deleted

**Note:** When restoring backups, it restores to a NEW INSTANCE, not an existing one

## RDS: Encryption

- Encryption at Rest
    - Supported on MySQL, Oracle, SQL Server, PostgreSQL, MariaDB, Aurora
    - Done with AWS Key Management Service (KMS)
    - When enabled, all storage is encrypted, as well as backups, read replicas, and snapshots.

## RDS: Multi-AZ

Synchronous updates to backup DB from primary.  When the primary fails, automatic redirects to backup DB all completed by AWS.

Allows you to have an exact copy of your DB in a second availability zone.

**Note:** Multi-AZ is for disaster recovery, not performance


## RDS: Read Replicas

Allow you to have read-only copy of production database.  
    - Asynchronous replication from primary to read replica
    - Ideal for read-heavy workloads

**Notes about Read Replicas:**
    - Used for scaling, not Disaster Recovery
    - Must have automatic backups turned on to use
    - You can have 5 read replicas of any DB
    - You can have read-replicas of read-replicas (but watch out for latency)
    - Each RR has its own DNS endpoint
    - RRs can be Multi-AZ
    - RRs can be promoted to production (this breaks replication)
    - RRs can be in second region