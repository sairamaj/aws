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
## Todos
* google authenticator

**S3 Styles**
Virtual style puts your bucket name 1st, s3 2nd, and the region 3rd. Path style puts s3 1st and your bucket as a sub domain. Legacy Global endpoint has no region. S3 static hosting can be your own domain or your bucket name 1st, s3-website 2nd, followed by the region. AWS are in the process of phasing out Path style, and support for Legacy Global Endpoint format is limited and discouraged. However it is still useful to be able to recognize them should they show up in logs. [more](https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html)

Questions:
 Power user???