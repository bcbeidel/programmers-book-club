# IAM 101

IAM (Identity access management) allows you to manage users and their level of access to the AWS console.

## Why IAM?

- Centralized control of AWS account
- Shared access to AWS account
- Granular Permissions
- Identity Federation 
    - i.e., single sign on with other orgs creds 
- Multi-factor authentication
- Temporary access to resources
- password rotation services
- PCI/DSS compliant

## Critical Terms

- Users -- i.e., End users
- Groups -- A collection of users under one set of permissions.
- Roles -- You create roles and assign them to AWS resources 
- Policies -- A document that defines one or more permissions 

Effect
Resource


## Recommended Security Minimums

- Delete root access keys
- Use multi-factor authentication on root
- Create individual IAM users
- Use groups to assign permissions
- Apply an IAM password policy


## Navigating the console

- Users can be granted password, or programmatic access
    - i.e., username + password
    - or... secret and access keys
- Policies can be attached to groups or inividual users
- Password settings can be enforced (recycle 120 days, prevent resuse)

## Other notes
- IAM is universal, (not region specific)
- root acceds is the first account you created the account
- users have no permission when first logging in

##

Don't store credentials... use roles

## IAM - Exam Tips

- Users -- i.e., End users
- Groups -- A collection of users under one set of permissions.
- Roles -- You create roles and assign them to AWS resources 
- Policies -- A document that defines one or more permissions, attached to a user, group, or roles

- IAM is universal, not region specific
- "root account" is first account created when you setup the account.  It has full admin access
- New users have no permissions when created
- New users are `Access Key ID` and `Secret Access Keys` when created
    - grants access to apis and command line, not admin console
    - only viewable once


## IAM Best Practice

- Always set up `Multifactor Authentication` on the root account
- create password rotation policies


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
