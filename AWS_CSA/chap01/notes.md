## This is the AWS Certified Solutions Architect Study workspace

```java
public class HelloMultiverse {
    public static void main( String[] args )
    {
        System.out.println("Hello, Multiverse!");
    }
}
```

## Variable vs. Capital Expense

  Instead of having to invest in data centers and services before knowing how to use them, you can  pay
  only when you consume computing resources and pay only for how much you consume.

## Economics of Scale

  Another advantage of cloud computing is that *organizations benefit from massive economies of scale*. Using
  cloud computing can achieve a lower variable cost than would to get your own data-center. As users in
  the thousands are aggregated in the cloud, providers such as AWS can achieve higher economics of scale,
  this in turn translates to lower prices.

## Stop guessing capacity

  Making a capacity decision prior to deploying an application, you often end up either sitting on expensive
  idle resources or dealing with limited capacity. With cloud computing, organizations *stop guessing about
  capacity requirements* for the organization, because the cost and time it takes to experiment and develop
  is significantly lower.

##Focus on Business Differentiators

  Cloud computing allows organizations to focus on their business priorities, instead of on the heavy lifting
  of racking, stacking and powering servers. In this way organizations can *stop spending money on running and maintaining data centers*

## Go Global in Minutes

  Another advantage of cloud computing is the ability to *go global in minutes*. Organizations can easily deploy their applications to multiple locations around the world with a few clicks. This allows for redundancy across the globe and to deliver lower latency and better experiences to their customers at minimal cost. Cloud computing allows for smaller organizations/enterprises to go global.

## Cloud Computing Deployment Models

  The two primary cloud computing deployment models that the exam focuses on are "all in" cloud-based deployments and hybrid deployments. Understand how each strategy applies to architectural options and decisions.

  An *all-in-cloud-based application* is fully deployed in the cloud with all components of the application running in the cloud. Applications in the cloud have either been created in the cloud or have been migrated from an existing infrastructure, monolithic on premise. The benefits of cloud based applications are that they can be built on low-level infrastructure pieces or can use higher-level services that provide abstraction from the management, architecting and scaling requirements of core infrastructure.

  A *hybrid deployment* is a common approach taken by many enterprises that connects infrastructure and applications between cloud-based resources and existing resources, typically in an existing data center. The most common method of hybrid deployment is between the cloud and existing on-premises infrastructure to extend and grow an organization's infrastructure while connecting cloud resources to internal systems. Choosing between an existing investment in infrastructure and moving to the cloud does not need to be a binary decision. Leveraging dedicated connectivity, identity federation, and integrated tools allows organizations to run hybrid applications across on-prem and cloud services.

## AWS Fundamentals

   At its core, AWS provides on-demand delivery of IT resources via the Internet on a secure services platform, offering compute power, storage, databases, and content delivery. ( along with other functionality ). Using AWS resources is like purchasing electricity from a company instead of generating your own. The advantages are: **Capacity exactly matches your need, you pay only for what you use, economies of scale result in lower costs, and the service is provided by vendor experienced in running large networks.**

## Global Infrastructure

   AWS locations around the world are composed of *regions and Availability Zones*. Each *region*  is **a separate geographical area.** Each region has multiple, isolated locations known as **AVAILABILITY ZONES.** This achieves the greatest possible fault tolerance and stability. Each availability Zone is also isolated, but are connected to each other through low-latency links. AZ's are physically separated within a typical metro region and are located in lower-risk flood plains ( specific flood categorization varies by region ) Also use UPS or uninterrupted power supply along with on site generators, this all to reduce single point of failure. They are also redundantly connected to multiple tier-1 transit providers.

   By applying your app in more than one availability zone you can introduce redundancy.

## Security and Compliance

   Security is a core functional requirement that protects mission-critical info from accidental leakage, theft, deletion or integrity compromise. Helping to protect the confidentiality, and integrity and availability of the systems. See CIA contract with AWS.

## Security

    Cloud security at AWS is the number one priority

   AWS manages the underlying infrastructure, and the organization can secure anything it deploys on AWS. This affords each organization the flexibility and agility they need in security controls.

   This infrastructure is built and managed not only accordingly to security best practices and standards, but also with unique needs of the cloud in mind. **AWS uses redundant and layered controls, continuous validation and testing, and a substantial amount of automation to ensure that the underlying infrastructure is monitored and protected 24/7.**

## Compliance

   When customers move their production workloads to the AWS, both parties become responsible for managing the IT environment. Customers are responsible for setting up their environment in a secure and controlled manner. Customers also need to maintain adequate governance over their entire IT control environment. This insures audit friendly service features with applicable compliance or audit standards. AWS helps customers to build on traditional compliance programs.
   This helps organizations establish and operate in an AWS security control environment.

       Organizations retain complete control and ownership over the region in which their data is physically located,
       allowing them to meet regional compliance and data residency requirements.

   **The following is a partial list of AWS compliance:**

   * SOC, Service Organization Controls International Standard on Engagements ( ISAE ) 3402, SOC 2, and SOC 3

   * FISMA, Federal Information Security Management DoD Assurance Certification and Accreditation Process, DIACAP
     Federal Risk and Authorization Management Program ( FedRAMP )

   * Payment Card Industry Data security Standard ( PCI DSS ) Level 1

   * International Organization for Standardization ( ISO ) 9001, ISO 27001, and ISO 27018

## Auto Scaling

  *Auto Scaling* allows organizations to scale EC2 instances according to conditions defined by the particular workload.
   Allows resources to scale in and out to match demands of dynamic workloads. Instead of provisioning for peak, organizations can optimize costs and use only the capacity needed.

## Elastic Load Balancing

   *Elastic Load Balancing* automatically distributes incoming application traffic across multiple EC2 instances in the cloud. This enables organizations to achieve greater levels of fault tolerance in their applications, seamlessly provided the required amount of load balancing capacity needed to distribute application traffic.

## AWS Elastic BeanStalk

   *Elastic BeanStalk* is the *fastest* and simple way to get a *web application* up and running on AWS. Developers can simply upload their application code, and the service automatically handles all the details, such as resource provisioning, load balancing, Auto Scaling and monitoring. It provides support for a variety of platforms, including PHP, Java, Python, Ruby, Node, .NET, and Go. With Elastic BeanStalk, organizations retain full control over the AWS resources powering the application and can access the underlying resources at any time.

## Amazon Virtual Private Cloud ( VPC )

  *VPC* lets organizations provision a logically isolated section of the AWS Cloud where they can launch AWS resources a virtual network that they define. Organizations have complete control over the virtual environment, including selection of the IP address range, creation of subnets, and configuration of route tables and network gateways. In addition, organizations can extend their corporate data center networks to AWS by using hardware or software VPN connections or dedicated circuits by using AWS Direct Connect.

## AWS Direct Connect

   *AWS Direct Connect* allows organizations to establish a dedicated network connection from their data center to AWS. Using AWS Direct Connect, organizations can establish private connectivity between AWS and their data center, office, or collocation environment, which in many cases can deduce network costs, increase bandwidth throughput, and provide a more consistent network experience than Internet-based VPN connections.

## Amazon Route 53
   *Route 53 is a highly available and scalable Domain Name System or (DNS) **webservice**. It is designed to give developers and businesses an extremely reliable and cost-effective way to route end users to Internet applications by translating human readable names, such *w(x3).example_dot_com*, into a numeric IP adresses, such as 192.0.21, that computers use to connect to each other. **Route 53** also serves as a domain registrar, allowing you to purchase and manage domains directly from AWS.

## Storage and Contend Delivery

  AWS provides a variety of storage services such as Amazon **Simple Storage Service**, **Amazon CloudFront**, and **Elastic Block Store**

## (S3) Amazon Simple Storage Service

   *Amazon Simple Storage Service or S3* provides developers and IT teams with highly durable and scalable object storage that handles virtually unlimited amounts of data and large numbers of concurrent users. Organizations can store any number of objects of any type, such HTML web pages, source code files, images, and encrypted data and access these objects by using HTTP-based protocols. This is a cost-effective way for organizations to backup and recover, nearline archive, big data analytics, disaster recovery, cloud apps, and content distribution.

## Amazon Glacier

   *Amazon Glacier* is a secure, durable and extremely low-cost storage service for data archiving and long-term backup. Organizations can reliably store large amounts of data where retrieval time of several hours is suitable. Amazon S3 integrates closely with Amazon Glacier to allow organizations to choose the right storage tier for their workloads.

## Amazon Elastic Block Store aka (EBS)

   **Amazon Elastic Block Store** provides persistent block-level storage volumes for use with Amazon EC2 instances. Each Amazon EBS volume is automatically replicated within its **Availability Zone** to protect organizations from component failure, offering high availability and durability. By delivering consistent and low-latency performance, Amazon EBS provides the disk storage needed to run a wide variety of workloads.

## AWS Storage Gateway

  **AWS Storage Gateway** is a service connecting an on-premises software appliance with cloud-based storage to provide seamless and secure integration between an organization's on-premises IT environment and the AWS storage infrastructure. The service supports industry-standard storage protocols that work with existing applications. It provides low-latency performance by maintaining a cache of frequently accessed data on-premises while securely storing all your data encrypted in Amazon S3 or Amazon Glacier.

## Amazon CloudFront

  **Amazon CloudFront** is a content delivery web service. It integrates with other AWS Cloud services to give developers and businesses an easy way to distribute content to users across the world with low latency, high data transfer speeds, and no minimum usage commitments. Amazon CloudFront can be used to deliver your entire website, including dynamic, static streaming, and interactive content, using a global network of edge locations. Requests for content are automatically routed to the nearest edge location, so content is delivered with the best possible performance to end users around the globe.

## Database Services

   AWS provides fully managed relational and NoSQL database services, and in-memory caching as a service and a petabyte-scale data warehouse solution. This section provides an overview of the products that the database services compromise.

## Amazon Relational Database Service (AMAZON RDS)

   **Amazon RDS** provides a fully managed relational database with support for many popular open source and commercial database engines. It's a cost-effective service that allows organizations to launch secure, highly available, fault-tolerant, production-ready databases in minutes. Because Amazon RDS manages time-consuming administration tasks, including backups, software patching, monitoring, scaling, and replication, organizational resources can focus on revenue-generating applications and business instead of mundane operational tasks.

## Amazon DynamoDB

   **Amazon Dynamo/DB** is a fast and flexible NoSQL database service for all applications that need consistent, single-digit millisecond latency at any scale. It is a fully managed database, and supports both document and key/value data models. Its flexible data model and reliable performance make it a great fit for mobile, web, gaming, ad-tech, Internet of things..etc.

## Amazon Redshift

  **Amazon Redshift** is a fast, fully managed, petabyte-scale data warehouse service that makes it simple and cost effective to analyze structured data. AWS RedShift provides a standard SQL interface that lets organizations use existing business intelligence tools. By leveraging columnar storage technology that improves I/O efficiency and parallelizes queries across multiple nodes, Amazon RedShift is able to deliver fast query performance. RedShift architecture allows orgs to automate most of the common admin tasks associated with provisioning, configuring and monitoring a cloud data-warehouse.

## Amazon ElastiCache

  **Amazon ElastiCache** is a webservice that simplifies deployment, operation and scaling of an in-memory cache in the cloud. The service improves the performance of web apps by allowing organizations to retrieve information from fast, managed, in memory caches, instead of relying entirely on **slower disk-based  databases**. As of now, ElastiCache Memcached and Redis cache engines.

    Management Tools

    AWS provides a variety of tools that help organizations manage your AWS resources. The following section is an overview of these management tools.

## Amazon CloudWatch

  **Amazon CloudWatch** is monitoring service AWS Cloud resources and the applications running on AWS. It allows organizations to collect and track metrics, collect and monitor log files, and set alarms. By leveraging **Amazon CloudWatch**m organizations can react, as necessary, to keep applications running smoothly.

## AWS CloudFormation

   **AWS CloudFormation** gives developers and systems administrators an effective way to create and manage a collection of related AWS resources, provisioning, and updating them in an orderly and predictable fashion. AWS cloudFormation defines a **JSON-based** templating language that can be used to describe all the AWS resources that are necessary for a workload. Templates can be used to describe all AWS resources that are necessary for a workload. Templates can be submitted to AWS cloudFormation and the service will take care of the provisioning and configuring those resources in appropriate order.

## AWS CloudTrail

   **AWS CloudTrail** is a webservice that records AWS API calls for an account and delivers log files for audit and review. The recorded information includes the identity of the API caller, the time of the API call, and the source IP address of the API caller, the request parameters, and the response elements returned by the service.

## AWS Config

  **AWS Config** is a fully managed service that provides organizations with an AWS resource inventory, configuration history, and configuration change notifications to enable security and governance. With AWS Config, organizations can discover existing AWS resources, export an inventory of their AWS resources with all configuration details, and determine how a resource was configured at any point in time. These capabilities enable compliance auditing, security analysis, resource change tracking, and troubleshooting.

    Security and Identity

     AWS provides security and identity services that help organizations secure their data and systems on the cloud.

## AWS Identity

  **AWS Identity and Access Management (IAM)** enables organizations to securely control access to AWS Cloud services and resources for their users. Using IAM, organizations can create and manage AWS users and groups and use permissions to allow and deny their access to AWS resources.

## AWS Key Management Service (KMS)

   **AWS Key Management Service(KMS)** is a managed service that makes it easy for organizations to create and control the encryption keys used to encrypt their data and uses **Hardware Security Models** (HSMs) to protect the security of your keys. AWS KMS is integrated with several other AWS Cloud services to help protect data stored with these services.


## AWS Directory Service

   **AWS Directory Service** allows organizations to set up and run **Microsoft-Active-Directory** on the AWS Cloud or connect their AWS resource with an existing on-premises MS Active directory. Organizations can use it to manage users and groups, provide single sign-on to applications and services, create and apply Group Policies, domain join Amazon EC2 instances, and simplify the deployment and management of cloud-based Linux and Microsoft Windows workloads.


## AWS Certificate Manager

   **AWS Certificate Manager** is a service that lets organizations easily provision, manage, and deploy Secure Sockets Layer/ SSL/ TSL Transport Layer Security certificates for use with AWS Cloud services. It removes the time-consuming manual process of purchasing, uploading and renewing SSL/TSL certs. With **AWS Certifications Manager** , organizations can quickly request a certificate, deploy it on AWS resources such as **Elastic Load Balancing** or **Amazon CloudFront distributions** , and let AWS Certification Manager handle certificate renewals.

## AWS Web Application FireWall ( WAF )

   **WAF helps protect web applications from common attacks and exploits that could affect application availability, compromise security, or consume excessive resources. AWS WAF gives organizations control over which traffic to allow or block to their web applications by defining customizable web security rules.

    Application Services

    AWS provides a variety of managed services to use with applications.

## Amazon API Gateway

  **Amazon API Gateway** is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale. Organizations can create an API that acts as a "front door" for applications to access data, business logic, or functionality from back-end services, such as workloads running on Amazon EC2, code running on **AWS Lambda** , or any web application. **Amazon API Gateway** handles all the tasks involved in accepting and processing up to a hundreds of thousands of concurrent API calls, including traffic management, authorization and access control, monitoring, and API version management.

## Amazon Elastic transcoder

  **Amazon Elastic transcoder** is media transcoding in the cloud. It is designed to be a highly scalable and cost-effective way for developers and businesses to convert (transcode) media files from their source formats into versions that will play back on devices such as smartphones, tablets and PCs.

## Amazon Simple Notification Service ( SNS )

  **AWS SNS** is a web service that coordinates and manages the delivery or sending of messages to recipients. In Amazon SNS, there are two types of clients-publishers and subscribers -- also referred to as producers and consumers. Publishers communicate asynchronously with subscribers by producing and sending a message to a topic, which is a logical access point and communication channel. Subscribers consume or receive the message or notification over one of the supported protocols when they are subscribed to the topic.

## Amazon Simple Email Service (Amazon SES)

  **Amazon Simple Email Service** is a cost-effective email service that organizations can use to send transactional email, marketing messages, or any other type of content to their customers. Amazon SES can also be used **to receive messages and deliver them to an Amazon S3 bucket, call custom code via AWS Lambda function, or publish notifications to Amazon SNS.

## Amazon Simple Workflow Service ( Amazon SWF )

  **Amazon SImple Workflow Service** helps developers build, run and scale background jobs that have parallel or sequential steps. SWF can be thought of as a fully managed state tracker and task coordinator on the cloud. In common architectural patterns, if your application's steps take more than 500 millaseconds to complete, it is vitally important to track the state of processing and to provide the ability to recover or retry if a task fails. Amazon SWF helps organizations achieve this reliability.

## Amazon Simple Queue Service ( SQS )

   **Amazon Simple Queue Service ( SQS )** is a fast, reliable, scalable, fully managed message queue service. Amazon SQS makes it simple and cost effective to decouple the components of a cloud application. With Amazon SQS, organizations can transmit any volume of data, at any level of throughput, without losing messages or requiring other services to be always available.

## SUMMARY

   **The term "cloud computing" refers to the on-demand delivery of IT resources via the Internet with pay-as-you-go pricing. Instead of buying, and maintaining data centers and servers, organizations can acquire technology such as computer power, storage, databases, and other services on a as-needed-bases. AWS maintains the technology infrastructure in a secure environment and businesses access these resources via the Internet to develop and run their applications. Capacity can grow or shrink instantly and businesses pay only for what they use**.

















