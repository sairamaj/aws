* Elastic file system
* Accessed through ec2 instances via mount targets
* Traffic between ec2 and efs is controlled through security groups
* EFS file sysetm itself controlled using standard UNIX permissions
* Used to share accross multiple ec2

- Dont use for RDS storage 
- Dont use as temporary storage

* Available as
    * General Purpose (default)
    * Max I/O (use if file operations >7000 per second)

* Security
    * IAM for api calls
    * Security groups per traffic between ec2 and efs
    * Network file system 