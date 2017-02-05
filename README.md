## This is the AWS Certified Solutions Architect Study workspace

```java
public class HelloMultiverse {
    public static void main( String[] args )
    {
        System.out.println("Hello, Multiverse!");
    }
}

```


## Five Main principles that define cloud computing

  Summarization of five principles of cloud computing.

  * Pooled computing resource available to any subscribing users

  * Virtualized computing resources to maximize hardware utilization

  * Elastic scaling up or down according to need

  * Automated creation of new virtual machines or deletion of existing ones

  * Resource usage billed only as used.


**Pooled resources** : Available to any subscribing users

**Virtualization** :  High utilization of hardware assets

**Elasticity**    :  Dynamic scale without CAPEX

**Automation**     : Build, deploy, configure, provision, and move all without manual intervention

**Metered Billing** : Per-usage business model; pay only for what you use

| Family 	| Specialty                      	|                      Use Case                     	|
|--------	|-------------------------------	|:-------------------------------------------------:	|
| T2     	| Lowest Cost,  General Purpose 	| Web server Small Database                         	|
| M4     	| General Purpose               	| Applications                                      	|
| M3     	| General Purpose               	| Applications                                      	|
| C4     	| Compute Optimized             	| High CPU,  Applications Database                  	|
| C3     	| Compute Opitimzed             	| High CPU,  Applications Database                  	|
| R3     	| RAM Memory Optimized          	| for high mem applications                         	|
| G2     	| Graphics                      	| Optimized for: video encoding, 3D Apps, Streaming 	|
| I2     	| High Speed Storage (IOPS)     	| NoSQL, DBs, DataWarehousing                       	|
| D2     	| Dense Storage                 	| File servers, Hadoop                              	|


#AWS- Concepts and Components

**AWS Global Infrastructure:**

   * **AZ** - DataCenter, 12 regions and 33 AZ, possibly 11 more AZs added in 2016 [1]

   * **Region** - 2 or more AZs

   * **Edge Location** - CDN End Points for CloudFront

**Networking**

   * **VPC** - Virtual Private Server

   * **Direct Connect** - connecting to AWS without using an Internet Connection

   * **Route53** - DNS service (port 53... duh!)

**Compute**

   * **EC2** - virtual server**

   * **EC2** Container Service - EC2 with Docker

   * **Elastic Beanstalk** - Service for deploying web applications and services. "AWS for Beginners", if you will.

   * **Lambda** - "Most powerful/revolutionary service". Run code without servers. Pay for execution time, only when code is executed.

**Storage**

   * **S3** - Object Based storage, a place to store flat files in the cloud.

   * **CloudFront** - Content Delivery Network, local caching of content

   * **Glacier** - Long term backup, 3-5 hours to retrieve data

   * **EFS** - NAS in the cloud, block level storage (in preview)

   * **Snowball** - import/Export service. For moving large amounts of data in and out of AWS. They will ship you a suitcase of disks

   * **Storage Gateway** - Virtual Machine that you can run locally that replicates data from a local datacenter to AWS.

**Databases**

   * **RDS** - SQL, Aurora, Oracle, PostgresSQL, MySQL, MariaDB

   * **DynamobDB** - NoSQL

   * **ElastiCache** - Caching DB services in cloud to relieve stress on RDS for high I/O environments

   * **RedShift** - Data Warehousing service. Great Performance

   * **DMS** - Database Migration Services. How to migrate/convert local DBS into AWS

**Analytical**

   * **EMR** - Elastic Map Reduce. A way of processing Data, Managed Web Service Hadoop clusters

   * **Data PipeLine** - moving data from one service to another

   * **Elastic Search** - Managed service to deploy/operate a search engine in the cloud

   * **Kinesis** - managed service platform for real time streaming of big data. This would include web apps, mobile devices, wearables generate huge amount of data. **Use Kinesis to digest big data**

   * **Machine learning** - for use by developers to work with machine learning, not in test

   * **Quick Sight** - Business Intelligence service, not in test

**Security and Identity**

   * **IAM** - control users, roles, groups, policies

   * **Directory Services** - ?

   * **Inpsector** - install agents on EC2 instances & check for vulnerabilities not in test

   * **WAF** - Web Application Firewall condition sets:

      * IP Match
      * String Match
      * SQL Injection Match
      * Size Constraint
      * Cross-site Scripting Match

   * **Cloud HSM** - Hardware Security Model

   * **Certificate Manager** ?






