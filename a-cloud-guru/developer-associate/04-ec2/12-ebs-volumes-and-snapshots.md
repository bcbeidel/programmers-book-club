# EBS: Volumes and Snapshots

- EBS Volumes and EC2 instances run in the same availability zone, i.e., Compute and storage are close together.  Otherwise, you would run into extra network time.

A common exam scenario, is moving EBS/EC2 from one availability zone to another

## Volume Modification

On the fly, you can.

- Change storage medium
- Change storage size 
    - additional on-disk operations may be required to partition drive and save it

## Snapshots

- Think of snapshots as a point in time 'photograph' of a disk
- Can be used to
    - create an image   
    - create a volume

Use Hardware Assisted Virtualization, for most options

## Moving to another Availability Zone

- Snapshot an existing image
- Create a snapshot of that image
- Launch that image into a new availability zone

A similar process can be used to move between regions, by registering an AMI and moving it

## Non-Root Volumes Will Persist After and ECS Instance is Deleted

## Exam Tips

- Volumes exist on EBS.  Think of EBS as a virtual hard disk
- Snapshots exist on S3.  Think of snapshots as photographs on disk
- Snapshots are point in time copies of volumes
- Snapshots are incremental, i.e., it only captures blocks that have changed for new snapshots
- The first snapshot will take more time to take

- To take snapshot of something that will serve as root, you should disconnect (so it is static)
- You *can* take a snapshot while it is running
- AMIs can be created from Volumes and Snapshots
- EBS volumes can be changed on-the-fly
- Volumes will always be in the same availability zone as EC2 instances

- Register a snapshot as an AMI to move it between AZ and regions