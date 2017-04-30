## Chapter 03

## AWS EC2 - Elastic Computing Cloud

## AWS EBS - Elastic Block Store

**Objectives Included but not limited**

**1.1 Identify and recognize cloud architecture considerations, i.e. fault-tolerant, scalable systems**.

Content that may be included:

	* how to design cloud services

	* Planning and design

	* Monitoring and logging

**Domain 2.0: Implementation/Deployment**

2.1 **Identify the appropriate techniques and methods using EC2s, S3, BeanStalk, CloudFormation, OpsWorks, VPC, and Identity along with IAM to code and implement a cloud solution**

The following content may be included

	* Configure an AWS Machine Image (AMI)

	* Configure services to support compliance requirements in the cloud

    * Launch instances across the AWS global infrastructure

**Domain 3.0: Data Security**

3.2 Recognize critical disaster recovery techniques and their implementation.

Included content :

	* Disaster recovery

	* Amazon EB

## What you need to know on the exam.

**How instance types and AMIs define capabilities of instances you launch on the cloud**

**How to securely access instances with virtual firewalls called security groups**

**How to change the capabilities of an existing instance**

**The payment options available for the most optimal mix of affordability and performance**

**How instance stores differ from EBS volumes and when they are effective**

**What type of volumes are available through EBS**

**How to protect your data on EBS**

##Amazon Elastic Compute Cloud ( EC2 )

EC2 is AWS primary web service that provides realizable compute capacity in the cloud.

**Compute Basics**

*Compute* refers to the amount of computational power required to fulfill your workload. If the workload is very small, such as a website that receives few visitors, then your computer needs are very small. A loage workload, such as screen ten million compounds against a cancer target, might require a great deal of compute power. The amount of compute you need might change drastically over time.

EC2 allows you to acquire compute through the launching of virtual servers, called instances. **Instances are virtual servers**. You are paying for the compute power, you are charged per hour while the instance is running. WHen the instances stops you are no longer charged.

**There two concepts** that are key launching instances on AWS(1): The amount of Virtual hardware that is dedicated to the virtual server ( instance ). 2. The software loaded on the instance. These two dimensions of new instances are controlled, respectively, by the instance.

**Instances Types**

The instances type defines the virtual hadrware supporting an EC2 instance. There are dozens of instance types available, varying in the following dimensions.

 * Virtual CPU ( vCPUS)

* Memory

* Storage ( size and type )

* Network performance

**Instance types are grouped into families based on the ratio of these values to each other. For instance, the m4 family provides a balance of compute, memory and network resources, and it is a good choice for many applications. Within each family there are several choices that scale up linearly.


## C4 Compute optimized for workloads requiring significant processing

## r3 Memory optimized - for intensive workloads

## i2 Storage optimized - For workloads requiring high amounts of fast SSD storage

## g2 GPU-based instances- intended for graphics and general-purpose GPU compute workloads

In response to customer demand and to take advantage of new processor technology, AWS occasionally introduces new instance families.
## CHECK AWS SITE FOR NEW INSTANCE FAMILIES

**it is also important to consider network performance** Many instance types support enhanced networking. Enhanced


