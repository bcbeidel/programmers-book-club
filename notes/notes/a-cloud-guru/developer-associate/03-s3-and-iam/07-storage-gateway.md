# Storage Gateway

AWS service that connects on-prem storage with cloud based storage to enable data transfer between environments.

Software (on a VM), that is installed in your data-center, and when configured it handles your transfer

## Variants

- **File Gateway:** NFS & SMB
    - Files are stored as s3 objects in your FS, moved to AWS with applied bucket policies and replication
- **Volume Gateway:** Stored Volumes
    - Data volume is written in snapshots to Elastic Block Storage (EBS).  
    - Written in incremental snapshots
    - compressed to minimize storage
    - durable cloud backups
    - (entire dataset stored on s3)
- **Volume Gateway:** Cached Volumes
    - Uses s3 as the primary storage
    - freqently accessed items are stored locally on prem storage gateway device
    - (most frequent cached locally, rest on aws)
- **Tape Gateway:** VTL
    - virtual tape backup
    - takes existing tape infrastructure to backup on cloud
