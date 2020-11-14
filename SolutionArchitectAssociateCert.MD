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

## Todos
* google authenticator