* Block level storage
* To be used with EC2
* Can attach to only one EC2
* Can attach multiple EBS to single EC2
* Persist independent of  EC2
* Can take snapshot (stored in S3)
* Snapshot can be copied to different region
    * For DRs
    * For geographical expansion
* Used for frequent changes of data and persist beyond EC2 lifetime

* [Performance](https://docs.aws.amazon.com/whitepapers/latest/aws-storage-services-overview/performance-3.html)
    * SSD
        * for small random access
        * SSD Privisioned IOPs
            * Max IOPs per volume
                * 20000
        * General purpose
            * Max IOPs per volume
                * 10000
    * HDD
        * for large sequential
        * Throughput Optimized
            * Max IOPs per volume
                * 500
        * Cold
            * Max IOPs per volume
                * 250

* To maximize durability and availability
    * Create snapshots frequently
* EBS volume data is replicated across multiple servers in a single Availability Zone to prevent the loss of data from the failure of any single component
* To expand existing already attached EBS
    * snapshot, new volume from existing snapsho with higher space, delete old one, attach newone
* Cost
    * provisioned storage
    * I/O requests
    * snapshot storage
    * Amazon EBS General Purpose (SSD), Throughput Optimized (HDD), and Cold (HDD) volumes are charged per GB-month of provisioned storage. Amazon EBS Provisioned IOPS (SSD) volumes are charged per GB-month of provisioned storage and per provisioned IOPS-month

