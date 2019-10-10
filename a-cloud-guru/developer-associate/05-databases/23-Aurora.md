# Aurora

MySQL compatible relational DB provided by Amazon.  Built from scratch by AWS.

## Basics

- Start with 10GB, auto-scales in 10GB increments up to 64TB
- Compute scales up to 32 vCPUs and 244GB memory
- 2 copies of data in each AZ with minimum of 3 AZ. (6 copies of your data)

## Scaling

- Designed for high availability
    - read capability unaffected with loss of up to 3 copies
    - write capability unaffected by loss of up to 2 copies
- Storage is Self-healing

## Exam Tips

- 2 copies of data in each AZ with minimum of 3 AZ. (6 copies of your data)
- You can share Aurora snapshots with other AWS accounts
- Two types of read replicas
    - Aurora (w/ Automatic fail-over)
    - MySQL (No automatic fail-over)