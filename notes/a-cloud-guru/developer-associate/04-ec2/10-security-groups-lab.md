# Security Groups

- **Security Groups** - AWS security groups (SGs) are associated with EC2 instances and provide security at the protocol and port access level. Each security group – working much the same way as a firewall – contains a set of rules that filter traffic coming into and out of an EC2 instance.

- **Stateful** means the computer or program keeps track of the state of interaction, usually by setting values in a storage field designated for that purpose. Stateless means there is no record of previous interactions and each interaction request has to be handled based entirely on information that comes with it.

## Exam Tips

- All inbound traffic is blocked by default
- All outbound traffic is allowed by default
- Changes to Security Groups Take Effect Immediately
- You can have any number of EC2 instances within a security group
- You can have multiple security groups attached to an EC2 instances

- Security Groups are STATEFUL
- If you create an inbound rule allowing traffic in, that traffic is allowed back out
- You cannot block specific IP addresses with Security Groups, instead use Access Control Lists
- You can specify allow rules, but not deny rules.