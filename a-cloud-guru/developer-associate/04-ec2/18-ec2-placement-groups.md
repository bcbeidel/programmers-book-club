# EC2 Placement Groups

What hardware are your instances 'placed' on?

- **Clustered Placement Groups:** grouping of instances inside a single availability zone.  Recommended for applications that need low network latency, high network throughput, or both. 
    - low network latency / high network throughput
    - puts your instances close together on the same hardware
- **Spread Placement Groups:** group of instances that are placed on distinct underlying hardware.  Recommended for apps that have small number of critical instances that should be kept separate from one another.
    - individual, critical EC2 instances
    - Think individual instances
- **Partitioned Placement Groups:** separate things into logical segments (i.e., partition).  Each partition has its own set of racks, network and power source.  Allowing you to isolate the impact of hardware failure in your application.
    - multiple EC2 instances -- HDFS, HBase, Cassandra
    - Think multiple instances

## Exam Tips

- Clustered placement group can't span multiple Availability Zones (AZs)
- Spread and Partition Can spread across AZs
- Name for placement group must be unique within the account
- Only certain type sof instances can be launched in placement groups
    - Compute Optimized, GPU, Memory Optimized Storage Optimized
- AWS recommends homogeneous placement groups 
- You can't merge placement groups
- Can't move an existing instance into a placement groups, must create an AMI and launch new instance into placement group




