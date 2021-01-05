### Gateway
* Supported Backends
    * Lambda
    * Public faced non AWS
    * VPC
    * Mock
    * AWS Service
* Gateway through Direct Connect
    * Use VPC Link to integrate on-premises backend solutions through DirectConnect and private VPC
* API Gateway automatically protects backend systems from DDoS


### Lambda
* For the lambda function to access S3 service endpoint from within private VPC, there should be either NAT gateway or S3 vpc endpoint.
* A policy on the role can only define access to which API actions can be made on RDC instance such as rds:CreateDBInstance, rds:CreateDBSecurityGroup. The policy will not define whether a resource can connect to RDS instance or not.

[lambda metrics](https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics.html)
[retry errors](https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html?shortFooter=true)

### Route53 traffic
* CloudFront
* EC2
* Elastic BeanStalk
* Load balancing
* RDS
* S3
* WorkMail