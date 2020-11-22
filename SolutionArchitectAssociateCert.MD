DataCenter -> Bunch of servers
Available Zone -> a data center ( can be more than one data center close enough)
Region -> geographical location -> consists of 2 or more availability zone.
Edge location -> end points which are used for caching (typically this consists of CloudFront(CDN)) (There will be more edge locations than region)

### Setting billing alram
Cloud Watch-> Billing

### S3
* globally unique
* object based.
* [s3 faq](https://aws.amazon.com/s3/faqs/)
* bucket=> * objects
* [acls vs policies in s3](https://stackoverflow.com/questions/47815526/s3-bucket-policy-vs-access-control-list)
* **Note**: Versioning will increase the object size
* More prefixes the better performance
* S3 signed URL vs CloudFront signed Urls(more to study)
* Snowball /Snowmobile (more to study)
* Storage GateWay
### CDN
* Invalidators can be used to invalidate the cache at Cloud-Front (a charge will apply)
* OAI (Origin access identifier)


## EC2
* Windows ssh connect
    * SSH chrome extension
    * ssh-keygen -y -f kp.pem >kp.pub
    * rename kp.pem to kp
    * from extension Import ,both files
    * user ec2-user
    * sudo su
### To make web server
  * yum update -y  ( to update os)
  * yum install httpd -y
  * cd /var/www/html
  * nano index.html
    * add a <html><h1>Hello World</h1></html>
    * ctrl+x
    * y
  * service httpd start
  * chkconfig on   
  * ssh-keygen is part of git.

* You can encrypt root volume of EC2
* Security Groups satefull (inbound automatically turns outbound. Allowing http:80 means the resposne is returned without output bound role) 
* Network Acess Control List is stateless (inbound does not mean outbound)
* One can add multiple security groups to EC2
* Whereever EC2 instance exists, volume exists in the same availability zone.
* Moving EC2 to another availability zones/regions
    * Snap-shot -> image -> Launch instance
    * Copy AmI in to another region
    * Need to read more about this.
* ECB Backed/Instance Store (need to more info)
### ECB
* Virtual hard drive
* You can change the size(only increase) But you need to modify OS to recoganize this new one.
* How to encrypt a unencrypted root volume?
    * take snap shot
    * copy snap shot and check encryption.
    * create image from this snapshot
    * launch instance from this image.

CloudWatch is performance(GYM)/logs and ClouldTail is monitors API calls to platform(CCTV)(audit)
* CloudWatch
 * standard 5 mins
 * details 1 min

* EFS (Elastic File System for EC2)
  * Like EBS where you can attach
  * But EBS cannot be attached to 2 EC2  (check thisout as it looks like it can).where as EFS can be(shared across multiple ec2)
  * Need to open NFS(2049) in Security Group.

## Todos
* google authenticator
* read about SMS and NFS differences for file

## Labs to try in AWS
* cloud-watch and alarms
* ec2 -> role -> aws commands
* ec2 -> boot straps.

## Elastic Load Balancer(EBS)
Amazon Elastic Load Balancers situated at different application tiers ensure that even if an entire zone goes offline, traffic will be directed to the appropriate one. It's worth pointing out that **the ELBs "live" outside the zones** and are therefore not impacted by the failure of any particular one. ELB is one of many AWS services that have a regional scope and can span across zones in a given region. Other services like Route 53 is global in scope, as shown below, and provides services to multiple Regions.


**S3 Styles**
Virtual style puts your bucket name 1st, s3 2nd, and the region 3rd. Path style puts s3 1st and your bucket as a sub domain. Legacy Global endpoint has no region. S3 static hosting can be your own domain or your bucket name 1st, s3-website 2nd, followed by the region. AWS are in the process of phasing out Path style, and support for Legacy Global Endpoint format is limited and discouraged. However it is still useful to be able to recognize them should they show up in logs. [more](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html)


## DNS
**Naked zone** An Internet domain name without the "www" or any other subdomains. For example, computerlanguage.com is a naked domain but www.computerlanguage.com is not, because it contains the www subdomain ( also called zone apex)

**Note** CNAME cannot be used with naked domains (Alias has to be used.) 
  Investigate: for ELB (is CNAME or ALIAS)

**PTR** is reverse of A
Questions:
 Power user???

