# Lab: Create A Billing Alarm

Understanding spikes in costs is important to managing costs of cloud services.  A billing alarm can help monitor that.

https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html

1. Services > Billing > Billing Preferences > Receive Billing Alerts
2. Services > Cloudwatch > Alarms > Billing > Create an Alarm
   - Set a threshold for level of  billing to alert
   - _Note: Multiple configurable options at this point_
3. Next > Configure Actions > Add SNS Topic
   - _When using Amazon SNS, you (as the owner) create a topic and control access to it by defining policies that determine which publishers and subscribers can communicate with the topic. A publisher sends messages to topics that they have created or to topics they have permission to publish to._
4. Create the alarm...