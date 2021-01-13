* SSD-backed storage for transactional workloads 
* HDD-backed storage for throughput intensive workloads

* ST1- HDD
    * frequently accesses
    * throuput intensive worloads
    * large data sets
    * large I/O sizes
    * MapReduce, Kafka,log processing,data warehouse, ETL workloads.
    * Burst of 250MB/s
    * Max 500MB/s
    * Baseline 40MB/s

* SC1-HDD
    * less frequently accessed.
    * large cold sets.
    * Burst of 80MB/s
    * Max 250MB/s
    * Baeeline 12MB/s

* SDD
    * for transactional workloads
    * IOPS intensive database workloads
    * bool volumes
    * Privoisional IOPS(io1,io2)
    * General purpose (gp2,gp3)
* HDD
    * big data
    * large I/O
    * sequential

* you can enable Multi-Attach on an EBS Provisioned IOPS __io1__ volume to allow a volume to be concurrently attached to up to __sixteen__ Nitro-based EC2 instances within the __same Availability Zone__

* The Classic Load Balancer is ideal for simple load balancing of traffic across multiple EC2 instances, while the Application Load Balancer is ideal for applications needing advanced routing capabilities, microservices, and container-based architectures. Please visit Elastic Load Balancing for more information
