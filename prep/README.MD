* to allocate elastic ip address
```cmd
    aws ec2 allocate-address
    # incur $0.12 per day for address if not attached to ec2
```
* to deallocate
```cmd
    aws ec2 release-address --allocation-id <id>
```

* to view
```cmd
    aws ec2 describe-addresses
```

* EIP for region
* Global accelerators not for regions
    * Decouples the resources from region
    * As it can be diverted to EIP/ELB/EC2 in any region

* zone name and zone identifier are different
    * same zone may map to different zone ids for different users

subnet -> route table -> entries to IGW/NAT

* to list nat gateways
```cmd
    aws ec2 describe-nat-gateways
```

* tansit gateway supports multicast
* Transit Gateway connects VPCs

### Resiliency , Reliability
The ability of an application to avoid and recover from failure.
### Availability
* The percentage of time an application is performing as expected
* Poor performance implies low availability
* Uptime is not the same as availability

