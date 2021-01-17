[cloudfront vs global accelerator](https://tutorialsdojo.com/aws-global-accelerator-vs-amazon-cloudfront/)

AWS Global Accelerator and Amazon CloudFront are separate services that use the AWS global network and its edge locations around the world. CloudFront improves performance for both cacheable content (such as images and videos) and dynamic content (such as API acceleration and dynamic site delivery). Global Accelerator improves performance for a wide range of applications over TCP or UDP by proxying packets at the edge to applications running in one or more AWS Regions. Global Accelerator is a good fit for non-HTTP use cases, such as gaming (UDP), IoT (MQTT), or Voice over IP, as well as for HTTP use cases that specifically require static IP addresses or deterministic, fast regional failover. Both services integrate with AWS Shield for DDoS protection.

* Storage gateway is hybrid cloud storage service to share and access data between on premesis and cloud.
* S3 Transfer Accelration is used to transfer data to S3 using CloudFront globally distributed edge locations.
* DataSync is a service used to transfer data between on-premise storage to AWS S3, EFS and FSx (also between AWS Storage services)
* AWS Data Migration service is used to migrate databases to AWS databases like Aurora,

A data warehouse is a database optimized to analyze relational data coming from transactional systems and line of business applications. The data structure, and schema are defined in advance to optimize for fast SQL queries, where the results are typically used for operational reporting and analysis. Data is cleaned, enriched, and transformed so it can act as the “single source of truth” that users can trust.

A data lake is different, because it stores relational data from line of business applications, and non-relational data from mobile apps, IoT devices, and social media. The structure of the data or schema is not defined when data is captured. This means you can store all of your data without careful design or the need to know what questions you might need answers for in the future. Different types of analytics on your data like SQL queries, big data analytics, full text search, real-time analytics, and machine learning can be used to uncover insights.

S3 Endpoints currently do not support cross-Region requests, ensure that you create your endpoint in the same Region as your bucket

__Cluster__ – packs instances close together inside an Availability Zone. This strategy enables workloads to achieve the low-latency network performance necessary for tightly-coupled node-to-node communication that is typical of HPC applications.

__Partition__ – spreads your instances across logical partitions such that groups of instances in one partition do not share the underlying hardware with groups of instances in different partitions. This strategy is typically used by large distributed and replicated workloads, such as Hadoop, Cassandra, and Kafka.

__Spread__ – strictly places a small group of instances across distinct underlying hardware to reduce correlated failures.

An __Elastic Fabric Adapter (EFA)__ is a network device that you can attach to your Amazon EC2 instance to accelerate High Performance Computing (HPC) and machine learning applications. EFA enables you to achieve the application performance of an on-premises HPC cluster, with the scalability, flexibility, and elasticity provided by the AWS Cloud.

An EFA is an Elastic Network Adapter (ENA) with added capabilities. It provides all of the functionality of an ENA.

__Elastic Network Adapters (ENAs)__ provide traditional IP networking features that are required to support VPC networking. __EFAs__ provide all of the same traditional IP networking features as ENAs, and they also support OS-bypass capabilities. OS-bypass enables HPC and machine learning applications to bypass the operating system kernel and to communicate directly with the EFA device

AWS Migraton service to migrate On-Premises database to AWS, keeping the On-Premises database fully operational during migration
DataSync is a service mainly used to migrate NFS servers to S3,EFS,FSx (not for database migration)
AWS Server Migration is used to migrate on-premises workloads to EC2.
AWS Migration hub is used to track the progress of Migraiton progress.

* AWS Migration service
  * During a typical simple database migration you will create a target database, migrate the database schema, setup the data replication process, initiate the full load and a subsequent change data capture and apply, and conclude with a switchover of your production environment to the new database once the target database is caught up with the source database.
  
  [ec2 user guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-ug.pdf)

  With a signed URL a user gets access only to a single file whereas with a signed cookie a user can access multiple files
  Signed cookies cannot be used in RTMP distribution.