# VPC Overview


- **Security Group:**
- **Route Table:** a data table stored in a router or a network host that lists the routes to particular network destinations, and in some cases, metrics (distances) associated with those routes. The routing table contains information about the topology of the network immediately around it. The construction of routing tables is the primary goal of routing protocols. Static routes are entries made in a routing table by non-automatic means and which are fixed rather than being the result of some network topology "discovery" procedure
- **Subnet:** a logical subdivision of an IP network.

- **Peering:**
- **NAT Gateway:** - A network address translation (NAT) gateway enables instances in a private subnet to connect to the internet or other AWS services, but prevent the internet from initiating a connection with those instances

- Think of VPC as a logical data-center in AWS
- Consist of Virtual Private Gateways (IGW), Route Tables, Network Access Control Lists, Subnets, Security Groups
- 1 Subnet == 1 Availability Zone
- Security Groups are Stateful; 
- Network Access Control Lists are Stateless;
- No Transitive Peering

## VPC Lab

- When you create a default VPC 
    - number of defaults are created
        - Route Table
        - Network Access Control LIst
        - Security Group
    - It won't create a default internet gateway 
    - US-East-1A in your account can be a completely different AZ than US-East-1A in another account, AZs are randomized
    - Amazon reserves 5 IPs within your subnets
    - You can only have 1 internet gateway per VPC
    - Security groups can't span VPCs


## NAT Instances & NAT Gateways



## Network Access Control Lists (ACLs)

- **Network Access Control List:** Stateless.  a layer of security for your VPC that acts as a virtual  firewall for controlling traffic in and out of one or more subnets. You might set up network ACLs with rules similar to your security groups in order to add an additional layer of security to your VPC.

### Exam Tips

- You can asscoiate a network ACL with multiple subnets; however a subnet can be associated with only one network ACL at a time.  When you add an association, the previous association is removed.