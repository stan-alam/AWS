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

#AWS- Concepts and Components

AWS Global Infrastructure:

   * AZ = DataCenter

   * 12 regions and 33 AZ, possibly 11 more AZs added in 2016 [1]

   * Region = 2 or more AZs

   * Edge Location = CDN End Points for CloudFront

Networking

   * VPC = Virtual Private Server

   * Direct Connect = connecting to AWS without using an Internet Connection

   * Route53 = DNS service (port 53... duh!)

Compute

   * EC2 = virtual server

   * EC2 Container Service = EC2 with Docker

   * Elastic Beanstalk = Service for deploying web applications and services. "AWS for Beginners", if you will.
