## S3

### S3: Exam Tips

- `S3` is object based storage.  i.e., it allows you to upload files
- Files can be from 0 Bytes to 5 TB
- Unlimited storage
- Files are stored in buckets (i.e., online folders)
- S3 is a universal namespace, Bucket names are universally unique

- Not suitable for installing and OS
- All buckets are private by default, can be managed down the the individual file level
    - Manageable by Bucket policies
    - Access control lists

### S3: Fundamentals

- Key (name of the object) 
- Value (data, i.e., sequence of bytes)
- Version ID (important for versioning)
- Metadata (data about data you are storing)

### S3: Data Consistency

- new object `PUTS` --> Read after Write consistency
- overwrite `PUTS` and `DELETES` --> eventual consistency (some time to propogate) 

## S3: Classes of Storage

1) S3 Standard
    - 99.99% availability
    - 99.99999999% durability
    - stored redundantly across multiple devices
    - designed so sustain the loss of to facilities concurrently
2) S3 IA (Infrequently Accessed)
    - for data accessed less frequently, but requires rapid low-latency access when you need it.
    - lower fee than `S3` but you are charged an access fee
3) S3 One Zone - IA (Infrequently Accessed)
    - lower fee than IA
    - no multi-Availability Zone data resilience
4) S3 - Intelligent Tiering
    - uses ML to move storage to cost effective tier
5) S3 - Glacier
    - secure, durable and low-cost
    - configurable retrieval time from a few minutes to a few hours
6) S3 - Glacier Deep Archive
    - lowest cost storage class
    - retrieval time of 12 hours is acceptable

## S3: Encryption

- Encryption In Transit
    - SSL/TLS
- Encryption at Rest
    - S3 Managed Keys - SSE-S3
    - AWS Key Management Service - Managed Keys - SSE-KMS

# S3 overview

## Basics

- Object based storage
- Stored across devices / locations
- Files stored in bucket
- S3 is a universal namesspace (i.e., bucket names must be unique)

After a successful upload, success code of `200`

## S3 is Object Based

- Key - Name of the object
- Value - Data (sequence of bytes)
- Version ID - Important for versioning
- Metadata (data about data)
- Subresources
    - Access controll lists
    - Torrent

## Data Consistency

- Read after Write consistency for `PUTS` of new Objects
- Eventual Consistency for overwrite `PUTS` and `DELETES` (can take some time)

If you write a new file, you will be able to read it immediately, if up update an existing file, it may take some time to propagate.

## Features

- 99.99% guaranteed availibility
- 99.99999999999% guaranteed durability
- Tiered storage available
- Life cycle management available
- Versioning
- Encryption
- MFA Delete
- Secure data with Access Control Lists and Bucket Permissions


## Tiers

- S3 Standard - 99.99 
- S3 IA (Infrequently Accessed)
    - lower rate than standard, but charged retrieval fee
- S3 One Zone - IA
- S3 - Intelligent Tiering (move around based on usage)

## S3 and Encryption

By Default, all buckets are private.  Access can be changed by 

- Bucket Policies
- Access Control Lists

Additional features include versioning and logging.

## Encryption in Transit

- SSL/TLS (https)

## Encryption at rest

- server side 
    - s3 managed key (SSE-S3) - aws manages the keys
        - SSE-S3
    - AWS Key Management Service, Managed Keys 
        - SSE-KMS
    - Server Side Encryption with Customer Provided Keys 
        - SSE-C

- client side


## S3 - Versioning

- Stores all versions of an object, even if you delete the object
- Great backup tool
- Once enabled, cannot be disabled
- Integrates with life cycle rules
- Includes MFA delete capability


## Lifecycle Management

- Automates moving your objects between storage teirs
- Can be used in conjunction with versioning
- can be applied to current or 

## S3 Transfer Acceleration

File is uploaded to an edge location, which is then propogated async to bucket.
- separate URL
- shorter time to get to an edge location rather than 