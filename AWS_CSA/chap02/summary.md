# Summary

S3 is the core object storage on AWS, allowing you to store an unlimited amount of data with very high durability

Common S3 use cases include backup and archive, web content, big data analytics, static website hosting, mobile and cloud native application hosting, and disaster recovery.

S3 is integrated with many other AWS cloud services, this includes **IAM, ( identity and Access Management )KMS, EC2, EBS, EMR, DynamoDB, RedShift, SQS, Lambda, CloudFront**.

**Object Storage** differs from traditional block and file storage. **Block storage manages data at a device level** as addressable blocks, while file storage is your basic garden variety OS level, files folders. __**Object Storage manages data as objects that contain both data and metadata, manipulated by an API**__

**S3 buckets** are containers for objects stored in S3. **Bucket names must be globally unique**. *Each bucket is created in a specific region, and data does not leave the region unless **copied by user**.

**S3 objects are files stored in buckets. Objects can be up to 5tb and contain any kind of data**. Objects contain both data and metadata, the latter describes the data. Each S3 object can be addressed by a unique URL formed by the web services endpoint, the bucket name, and the object key.

S3 has a minimalistic API - **create/delete a bucket, read/write/delete objects, list keys in a bucket -- and uses a REST interface based on standard HTTP verbs - GET - PUT - POST -DELETE - PATCH**. You can also use an SDK wrapper library, the AWS CLIE and/or the AWS Management Console to work with S3.

S3 is highly durable and highly available, **designed for 11 nines of durability** in objects in a given year, and four nines of availability all together.

S3 is eventually consistent, but offers read-after-write consistency for new object *PUT*s.

S3 objects are private by default, accessible on to the owner. Objects be marked public readable to make them accessible on the web. Controlled access may be provided to others using ACLs and AWS IAM and Amazon S3 bucket policies.

Static websites can be hosted in an S3 bucket.

Prefixes and delimmiters may be used in key names to organize and navigate data hierarchically much like a traditional file system.

S3 offers several storage classes suited to different use cases: Standard is designed for general-purpose data needing high performance and low latency. **Standard IA is for less frequently accessed data.**


