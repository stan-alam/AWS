## Core object storage services on AWS: Amazon Simple Storage Service ( Amazon S3 ) and Amazon Glacier

**Amazon S3** is easy *to use* **object storage** with a simple web service interface that can provide users the ability to store and retrieve any amount of data from anywhere on the WEB. Amazon S3 allows a customer to pay for only the storage they actually use, **which eliminates the capacity planning and capacity constraints associated with tradition storage**

**S3** was one of the first services introduced by AWS and serves as one of the foundational web-services --nearly any application running in AWS uses S3, either directly or indirectly. Amazon S3 can be used alone or in conjunction with other AWS services, and it offers a very high level of integration with many other AWS cloud services. e.g. it serves as the durable target storage for **Amazon Kinesis and Amazon Elastic Map reduce** .  It is used for storage in **Amazon Elastic Block Store ( EBS )** and for **Amazon Relational Database Service** snapshots. It is also used as a data staging or loading storage mechanism for **Amazon Redshift** and **Amazon DynamoDB**

     S3 is flexible, highly integrated and commonly used.

## Common use cases for Amazon S3

 * Backup and archive for on-premises or cloud data

 * Content, media and software storage and distribution

 * Big data analytics

 * Static website hosting

 * Cloud-native mobile and Internet application hosting

 * Disaster recovery

Amazon provides **lifecycle policies** . By using lifecycle policies, you can have your data automatically migrate to the most appropriate storage class, without modifying your application code. In order to control who has access to your data, Amazon S3 provides a rich set of permissions, access controls, and encryption options.

**Amazon Glacier** is another cloud storage service related to **Amazon S3** , but optimized for **data archiving and long-term backup** at an extremely low cost. Amazon Glacier is suitable for **cold data** which is data that is rarely accessed and for chich a retrieval time of three to five hours is acceptable. Amazon Glacier can be used both as a storage class of Amazon S3 and as an independent archival storage service.

## Object Storage vs Traditional Block and File Storage

File storage is a higher level on the presentational layer of the Operating System, i.e. files/folder directories, while **block storage** operates at a lower level, i.e. at the raw storage device level--and **the data is managed as a set of numbered, fixed-size blocks**. Both Block storage & file storage is that block storage is accessible over the a network in the form of a **Storage Area Network (SAN)** for block storage --> uses protocols such as **iSCSI** or **Fibre Channel** , or as a **Network File System (NFS)** Whether directly attached or network-attached, block or file, storage is very closely associated with the server and the OS that is using the storage.

**Object Storage** as it pertains to S3 is **cloud object storage**

      Instead of being closely associated with a server, AWS S3 storage is independent of a server
      and is accessed over the Internet. Instead of managing data as block or files over SCSI, CIFS,
      NFS protocols, data is managed as objects using an API built on CRUD ( HTTP verbs )


 AWS S3 Object contains both **data and metadata** . Objects reside in **containers called** *buckets* , each object is then identified by a **unique user specified key (filename)** . Buckets are a **simple flat folder with NO FILE SYSTEM HIERARCHY
 i.e. you can have multiple buckets, but you **can't have sub buckets within a bucket** **EACH BUCKET CAN HOLD AN UNLIMITED NUMBER OF OBJECTS**

 Another way of thinking : The AWS S3 object ( or the data portion of an object ) as a file, and the key as the filename. Keep in mind that the S3 is highly divergent of the traditional file system. You will be using HTTP verbs to GET an object or PUT an object, **operating on the whole object at once** instead of incrementally updating portions of the objects as you would with a traditional file system. You can't "mount" a bucket, "open" an object, install an OS on S3 or run a database on it. ** You don't need to worry about device or file system storage limits and capacity planning -- a sinlge bucket can store an unlimited number of files. You don't need to worry about data durability or replication across availability zones. --Amazon S3 Objects are automatically replicated on multiple devices in multiple facilities within a region. The same with scalability --if your request rate grows steadily, Amazon S3 automatically partitions buckets to support very high request rates and simultaneous access by many clients.

        The option for traditional block or file storage is available through S3 storage, AWS provides options.
        The AWS EBS service provides block level storage for Amazon Elastic Compute Cloud( Amazon EC2 ) instances.
        Amazon Elastic File System ( AWS EFS ) provides network-attached shared file storage ( NAS storage ) using
        the NFS v4 protocol.

## Amazon Simple Storage Service ( Amazon S3 ) basics

**Buckets**

A *Bucket* is a container ( web folder ) for objects ( files ) stored in S3. **Every Amazon S3 object** is contained in a bucket. **Buckets form the top-level namespace for Amazon S3, and bucket names are global. This means that your bucket names must be unique across ALL AWS accounts** This applies as the bucket naming convention much like DNS domain Name Systems are, and not just your account. Bucket names can contain up to 63 lowercase letters, numbers, hyphens, and periods. **You can create multiple buckets** up to *100* by default.

        Best practice: to use bucket names that contain your domain name and conform to the rules for DNS names.
        This ensures that your bucket names are your own, can be used in all regions, and can host static websites.







