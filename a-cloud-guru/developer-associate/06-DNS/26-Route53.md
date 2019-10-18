# Route53

## Route53: Register a Domain - Exam Tips

- You can buy domain names directly from AWS
- It can take up to 3 days to register a domain depending on the circumstances

## Route53: Routing Policies

- **Simple Routing:**  One record with multiple IP addresses.  If multiple value attached to a record, Route53 returns all values in a random order.

- **Weighted Routing:**  Allows you to split your traffic based on assigned weights.  i.e., you can set 80% of your traffic to US-EAST-1 and 20% to EU-WEST-1

- **Latency-based Routing:** Allows you to route your traffic based on the lowest network latency for you end user.  You create a record in each region that hosts your website and AWS returns the record that has the lowest latency for the user

- **Failover Routing:** Used when you want to create an active/passive setup.  e.g. primary site EU-WEST-2 and secondary disaster recovery site in AP-SOUTHEAST-2.  Requires a health-check attached to each endpoint.

- **Geo-location Routing:** allows you to choose where your traffic will be sent based on the geographic location of your users.  e.g., sending all european originating traffic to EU-WEST-2 to adhere to data privacy laws, pick default language, and Euro prices.

- **Geo-proximity Routing (Traffic Flow Only):**  Allows Route53 to traffic your resources based on the geographic location of users and resources.  Optionally, you can choose to send more or less traffic based on a supplied `bias`.  A `bias` expands or shrinks the size of a region from which traffic is routed.  `MUST USE Route53 Traffic Flow`

- **Multi-value Answer Routing:**  Allows Route53 to return multiple values, such as IP addresses, for your webserver.  It also allows you to apply a health check to each record.  `This is similar to simple routing, however it allows you to put a health check on each record set.` 

## Route53: DNS Summary

- ELBs do not have pre-defined IPv4 addresses; you resolve them with a DNS name
- Understand the difference between an Alias Record and a CNAME
- Given the choice, always choose and Alias Record over a CNAME
- Common DNS TYpes
    - SOA Records
    - NS REcords
    - A Records
    - CNAMES
    - MX Records
    - PTR Records