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

**AWS Regions**

Although namespace for **AWS S3 is global** , each S3 bucket is created in a specific region that you choose. This allows you to control where the data is stored, e.g. Virginia / EAST, Oregon / West. It is best to choose a region closer to the customer/consumer of your services to reduce latency, or to satisfy data locality and sovereignty concerns or even located from your primary location to conserve disaster recovery scenarios. **data in an S3 bucket** is stored in that region unless you **explicitly** copy it to another bucket in a another region.

**Objects**

  An object can store virtually any kind of data, think of an object as an "entity" in AWS. **Object can range in size from 0 bytes to 5 Teraybytes, and a single bucket can store an unlimited number of objects.** This means that Amazon S3 can store virtually unlimited amount of data.

  An object consists of

   * the data or the file itself

   * data about the file, i.e metadata

  Objects are not differentiated by type of data, i.e. data can be ascii or binary, AWS treats objects the same.

  An object is treated object's data is treated as simply a stream of bytes -- Amazon S3 doesn't know or care what type of data you are storing.

  **metadata of an AWS S3 object is a set of name/value pairs** There are two types of metadata:
  1. System metadata
  2. user metadata

  System-metadata is created by AWS S3, while user data is optionally created by the user. **System metdata** consists of date last modified, object-size, MD5 digest and HTTP Content-Type. User data is optional, it is only specified at the time of the object is created. Users can custom metadata tags to their data with meaningful attributes.

  **Keys**
  Keys are used to identify an object in an S3 bucket. Every object has a key associated with it, i.e. the unique identifier, **a key can be up to 1024 bytes of Unicode UTF-8 characters, including embedded slashes, backslashes, dots, and dashes.

  Keys must be unique within a single bucket, but different buckets can contain objects with the same key. The combination of bucket, key and optional version ID uniquely identifies an Amazon S3 Object.

  **Object URL**

  Amazon S3 is **storage for the Internet** and every AWS S3 object can be addressed by a specific unique URL formed using the Web services endpoint, the bucket name, the object key. For example, with the URL:

  http://mybucket.s3.amazonaws.com/jack.doc

 **mybucket** is the S3 bucket name, and jack.doc is the key or filename. If another object is created:

 http://mybucket.s3.amazonaws.com/fee/fi/fo/fum/jack.doc

 then the bucket name is **still my bucket** the key or file name is /fee/fi/fo/fum/jack.doc A key may contain delimiter characters like slashes or backslashes to help you name and logically organize your Amazon S3 objects, but to Amazon S3 it is simply **A long name in a flat namespace** There are no actual file and folder hierarchy.

#

      For convenience, the S3 console and Prefix and delimiter feature allow you to navigate within an S3 bucket
      as if there were a folder hierarchy.
      Remember that a bucket is single flat namespace of keys with no structure.


## REST Interface

   The native interface for S3 is REST. You use standard HTTP(s) to interact with the REST interface and use CRUD. You will use CRUD to delete buckets, lists keys, and read and write objects.
   Create PUT /sometimes POST, read is GET, and DELETE, update is POST ( or sometimes PUT )

          Always use HTTPS for S3 API requests to ensure that your requests and data are secure


  Most cases users use an Amazon SDK to interact with the REST interface instead of interacting with it directly. THE AWS SDK includes **wrapper libraries** for iOS, Android, JavaScript, Java, .NET, Node.js, PHP, Python, Ruby, GO, and C++ using the AWS CLI.

           There is no longer support for SOAP, although the legacy http endpoints are available.


## Durability and Availability

**Data durability and availability are related but are different concepts**
  Durability addresses the question, "Will my data still be there in the future?"
  Availability addresses the question, "Can I access my data right now?" S3 provides both very high durability and very high availability for your data.

Amazon S3 standard storage is designed for 99.999~ durability and 99.99% of availability of objects over a given year. The odds of storing 10k objects with S3 servers expect to lose about a single object every 10 million years. S3 is achieves high durability by automatically storing data redundantly on multiple decices in multiple facilities within a region. **it is designed to sustain the loss of data in two facilities without loss of user data.** Amazon S3 provides a highly durable storage infrastructure designed for mission critical and primary data storage.

     S3 storage offers very high durability at the infrastructure level, it is still a best practice
     to proectec against user-level accidental deletion or overwriting of data by using additional
     features such as versioning, cross-region replication, and MFA-delete


## Data Consistency

Changes in data may take time to propagate through the system. ( data is eventually consistent ) Data is automatically replicated across servers. As a result there can be situations where information of which you read immediately after an update may return stale data.

For PUTS to new objects, this is not a concern-- S3 provides read-after-write consistency. However, for PUTS to existing objects ( object overwrite to an existing key )and for object DELETEs, Amazon S3 provides *eventual consistency*

**Eventual consistency means that if you PUT new data to an existing key, a subsequent GET might return old data. This also applies to DELETE an object, a subsequent GET may return for the deleted object. In all cases **updates for eventually consistent reads the developer will get the new data or the old data, but never inconsistent mix of data**


## Access Control

**Amazon S3 is secure by default** when you create a bucket or object in S3, only you have access. To allow you to give controlled access to others, Amazon S3 provides both course-grained access controls ( AWS S3 Access Controls List [ACLs], and fine-grained access controls ( Amazon S3 bucket policies, AWS identity and Acess Management or **AMI** policies, and query-string authentication))

S3 Access Control or ACLs allow to grant certain coarse-grained permissions, such as **READ**, **WRITE**, or **FULL CONTROL** at the object or bucket level. ACLS are a legacy access control mechanism, created before IAM existed. ACLs are best used today for limited set of uses cases, such as enabling bucket logging or making a bucket that hosts a static website to readable.

Amazon S3 bucket policies are the recommend access control mechanism, for AWS S3 and provide much finer-grained control. AWS s3 bucket policies are very similar to IAM policies.

 * They are associated with the bucket resource instead of an IAM principal.

  * They include an explicit reference to the IAM principal policy. This principal can be associated with a different AWS account, so AWS S3 bucket policies allow you to assign cross-account access to AWS s3 resources.

From IAM policies you can specify who can access the bucket, from where (by Classless Inter-Domain Routing, CIDR block or by IP address) and during what time of day.

IAM policies may be associated directly with IAM principals that grant access to an AWS s3 bucket, just as it can grant access to any AWS service and resource.
**you can only assign IAM policies to principals in AWS accounts that you control**.

##Static Website Hosting

A very common use case for s3 storage is *static website* hosting. Websites particularly micro-sites, don't need the services of a full web server. A static site just needs content that does not require server-side processing -- PHP, ASP. JSP* this does not mean it can't be interactive/dynamic.
Static sites are fast, svalable and can be more secure than typical dynamic sites. S3 provides security, durability, availability and scalability.

S3 has a URL it is easy to turn a bucket into a website. To host static website, you configure a bucket for website hosting:

1. Create a bucket with the same name as the desired website hostname.

2. Upload the static files to the bucket

3. Make all the files public (world readable)

4. Enable static website hosting for the bucket. This includes specifying an Index document and an Error doc.

5. The website will be available at the s3 website url

           <bucket-name>.s3-website-<AWS-region>.amazonaws.com.

 6. Create a user friendly DNS name in your own domain for the website using a DNS, CNAME, or an Amazon Route 53 alias that resolves to the S3 website URL

 7. The website will be available at your website domain name.

##AWS S3 advanced features

Some s3 stuff you should be familiar with

**Prefixes and Delimiters**

While S3 uses flat structure in a bucket, it supports the use of *prefix* and *delimiter* parameters when listing key names. This feature lets you organize, browse, and retrieve the obejcts within a bucket hierarchically. Typically, you would use a slash (/) or backslash( \ ) as a delimiter and then use key names with embedded delimiters to emulate a file and folder hierarchy within the flat object key namespace of a bucket.

e.g. logs/2017/January/server420.log
/logs/2017/February/server420.log
logs/2017/March/server420.log

..etc..

The REST API, wrapper SDK, AWS CLI and the Amazon Management Console all support the use of delimiters and prefixes. This allows for logically organized new data structured into an easily maintainable hierarchical folder-and-file structure of existing data uploaded or backed up from traditional file systems. Used together with IAM or Amazon S3 bucket policies, prefixed & delimiters an equivalent of subdirectories, home directories etc. **This not really a file system**.

## Storage classes

ASW S3 offers a range of *storage classes* suitable for various use cases.

**S3** Standard offers high durability, hight availablity, low latency and high performance object storage for general purpose use. It delivers low first-byte latency and high throughput, Standard is well-suited for short-term storage of frequently accessed data. For general cases, S3 Standard is the place to start.

**S3 Standard -Infrequent Access (Standard-IA)** offers the same durability, low latency, and high throughput as S3 standard, but is designed for long-lived, less frequently accessed data. **Standard-IA** has a lower per GB-month storage cost than Standard, but the price model also includes a minimum object size (128 KB), min duration of 30 days and per GB retrieval costs, so it is best suited for infrequently accessed data that is stored for longer than 30 days.





