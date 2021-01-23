you copy an encrypted snapshot, you can use a different CMK to encrypt the target snapshot than the one that was used to encrypt the source snapshot.

A read replica of an Amazon RDS encrypted instance must be encrypted using the same CMK as the primary DB instance when both are in the same AWS Region. If the primary DB instance and read replica are in different AWS Regions, you encrypt the read replica using the CMK for that AWS Region.

Once you have created an encrypted DB instance, you can't change the CMK used by that DB instance. Therefore, be sure to determine your CMK requirements before you create your encrypted DB instance

You can only enable encryption for an Amazon RDS DB instance when you create it, not after the DB instance is created.However, because you can encrypt a copy of an unencrypted snapshot, you can effectively add encryption to an unencrypted DB instance. That is, you can create a snapshot of your DB instance, and then create an encrypted copy of that snapshot. You can then restore a DB instance from the encrypted snapshot, and thus you have an encrypted copy of your original DB instance. For more information
[source](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Encryption.html)

note: You can't create an encrypted snapshot of an unencrypted DB instance

* to make encrypt of unencrypt
    * Make a snaphot of unencrypted one
    * Encrypt snapshot
    * Restore db instance fom encrypted snapshot

 A snapshot of an encrypted DB instance must be encrypted using the same CMK as the DB instance.

 To copy an encrypted snapshot from one AWS Region to another, you must specify the CMK in the destination AWS Region. This is because CMKs are specific to the AWS Region that they are created in.
