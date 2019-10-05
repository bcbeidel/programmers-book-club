# Cloudwatch 101

**Amazon CloudWatch** is a monitoring and management service that provides data and actionable insights for AWS, hybrid, and on-premises applications and infrastructure resources. 

CloudWatch can monitor things like:

- Compute
    - EC2 Instances
    - Auto-scaling Groups
    - Elastic Load Balancers
    - Route53 Health Checks
- Storage and Content Delivery
    - EBS Volumes
    - Storage Gateways
    - CloudFront

## CloudWatch and EC2

Host level metrics consist of:

- CPU
- Network
- Disk
- Status Check

## CloudTrail

Often a trick question, try to mix up CloudTrail and CloudWatch.

CloudWatch is a big CCTV inside your AWS account.

**Cloudtrail** tracks users and accounts that make API calls, including the source IP and when called. 


## Exam Tips

- Cloudwatch monitors performance
- CloudTrail monitors API calls in the AWS platform

- CloudWatch is used for monitoring performance
- CloudWatch can monitor most of AWS as well as your applications that run on AWS
- CloudWatch with EC2 will monitor events every 5 minutes by default.
- Detailed monitoring can increase that frequency to 1 minute
- You can create CloudWatch alarms which trigger notifications
- CloudWatch is about performance, CloudTrail is about auditing.
