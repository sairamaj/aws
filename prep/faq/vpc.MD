[https://aws.amazon.com/vpc/faqs/]
Q. Does traffic go over the internet when two instances communicate using public IP addresses?
 
Traffic between two EC2 instances in the same AWS Region stays within the AWS network, even when it goes over public IP addresses.
Traffic between EC2 instances in different AWS Regions stays within the AWS network, if there is an Inter-Region VPC Peering connection between the VPCs where the two instances reside.
Traffic between EC2 instances in different AWS Regions where there is no Inter-Region VPC Peering connection between the VPCs where these instances reside, is not guaranteed to stay within the AWS network.

### IP Addressing
* 1 Primary CIDR and 4 secondary CIDRs

* Currently you can create 200 subnets per VPC

* The minimum size of a subnet is a /28 (or 14 IP addresses.) for IPv4. Subnets cannot be larger than the VPC in which they are created.

* Amazon reserves the first four (4) IP addresses and the last one (1) IP address of every subnet for IP networking purposes

### Traffic
* __VPC flows__ troubleshoot connectivity and security issues and to make sure that the network access rules are working as expected
* __VPC traffic mirroring__, provides deeper insight into network traffic by allowing you to analyze actual traffic content, including payload, and is targeted for use-cases when you need to analyze the actual packets to determine the root cause a performance issue, reverse-engineer a sophisticated network attack, or detect and stop insider abuse or compromised workloads

### EC2
* If the instances reside in subnets in different Availability Zones, you will be charged $0.01 per GB for data transfer.

* An instance launched in a VPC using an Amazon EBS-backed AMI maintains the same IP address when stopped and restarted. This is in contrast to similar instances launched outside a VPC, which get a new IP address


Traffic between instances in peered VPCs remains private and isolated – similar to how traffic between two instances in the same VPC is private and isolated and not __encrypted__. However Traffic is encrypted using modern AEAD (Authenticated Encryption with Associated Data) algorithms. Key agreement and key management is handled by AWS in inter region VPC peering

* Five Amazon VPCs per AWS account per region
* Two hundred subnets per Amazon VPC
* Five Amazon VPC Elastic IP addresses per AWS account per region
* One internet gateway per Amazon VPC

### VPNs
    * AWS(Virtual private gateway/Transit Gateway)-> On premises (Customer gateway)
    * VPN tunnel An encrypted link where data can pass from the customer network to or from AWS.
### To try
* Primary and Secondary CIDRs
    * Done
    * VPC -> 10.0.0.0/16 and 20.0.0.0/16
        * subnet added
            * 10.0.1.0/24
            * 20.0.1.0/24
* How to launch EC2 outside VPC?

### Resources
[BGP and ASN](https://www.cloudflare.com/learning/security/glossary/what-is-bgp/)
* BGP is postal service of internet
* ASN's are like individual post office branches
* Each autonomous system wishing to exchange routing information must have a registered autonomous system number (ASN)

NAT is not supported for IPv6 traffic—use an egress-only internet gateway instead.