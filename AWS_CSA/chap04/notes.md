## 04

# Amazon Virtual Private Cloud (VPC)

# Understand the core components of VPC and build your own VPC. A strong understanding of VPC topology and troubleshooting is required to pass the exam

# An Amazon VPC consists of the following components:

  **Subnets**

  **Route Tables**

  **DHCP - Dynamic Host Configuration Protocol, options sets**

  **Security Groups**

  **Network Access Control Lists (ACLs)**

## An Amazon VPC has the following optional components:

  **IGWS - Internet Gateways**

  **Elastic IP (EIP) addresses**

  **Elastic Network Interfaces (ENIs)

  **Endpoints**

  **Network Address Translation (NATS) instances and NAT Gateways**

  **Virtual Private Gateways**

  **Customer Gateways (CGWS)**

  **Virtual Private Networks**

## The aws certified solutions architect associate exam objectives covered:

Domain 1.0: Designing highly available, cost-efficient, fault tolerant, scalable systems

1.1 **Identify and recognize cloud architecture considerations, such as fundamental components and effective designs.**

## How to design cloud services

## Planning and design

## Familiarity with:

    * Best practices for AWS architecture

    * architectural trade-off decisions (e.g high available vs cost, Amazon relational Database services [RDS] vs installing your
      own database on Amazon Elastic Compute Cloud - EC2)

    * Hybrid IT architectures - e.g. **direct Connect, Storage Gateway, VPC, Directory Services**

## Domain 2.0 Implementation/Deployment

  2.1 **Identify the appropriate techniques and methods using AWS EC2, S3, AWS Elastic BeanStalk, AWS CloudFormation, AWS OpsWorks, Amazon Virtual Private Cloud (VPC),
  and WS AWS Identity Management (IAM) to code and implement a cloud solution.**

  **Content may include the following:**

   * Operate and extend service management in the Hybrid IT architectures

   * Configure services to support compliance requirements in the cloud

## Domain 3: Data Security

   3.1 **recognize and implement secure practices for optimum cloud Deployment and maintenance.**

   Content may include the following:

    * AWS security attribs (i.e. costumer workloads down to the physical layer)

    * Amazon virtual Private Cloud (VPC)

    * Ingress vs egress filtering and which AWS services and features filtering

    * "Core" EC2 and S3 security feature sets

    * Incorporating common conventional security products (firewall and VPNs)

    * Complex access controls (building sophisticated security groups, ACLs, and so on)


## The Amazon Virtual Private Cloud VPC

is a custom-defined virtual network within the AWS Cloud. You can provision your own logically isolated section of AWS, similar to designing and implementing a separate independent
network that would act/operate just like on premise datacenter.

The VPC is a the networking layer for EC2 and it allows devs to build their own network within AWS. You control the aspects of your VPC, including

  * selecting your own IP address range

  * create your own subnets

  * Configure you own route tables

  * configure network gateways

  * configure security settings

Which will all be done within a region, **You can create multiple VPCs and each VPC is logically isolated even if it shares its IP address space**

When creating a VPC, you must specify the IP4 address range by choosing the *classless Inter-Domain Routing (CDR) block, such as 10.0.0.0/16.*

## The Address range of the VPC cannot be changed after the VPC is created

**the range may be as large as /16 65,536 available address) or as small as /28 (16 available addresses) and should not overlap any other network with which they are to be connected**

EC2 classic first released which is flat network shared with other AWS customers. AWS accounts created after Dec 2013 only support launching instances using EC2-VPC.

**AWS accounts that support EC2-VPC will have a default VPC created in each region with a default subnet created in each availability Zone.**
The assigned CIDR block of the VPC will be 172.31.0.0/16

# subnets

A subnet is a segment of an AWS VPC's IP address range where you can launch EC2 instances, Amazon Relational Database Services (RDS) databases, and other AWS resources. CIDR blocks define subnets(e.g. 10.0.1.0/24 and 192.168.0.0/24) The smallest subnet that you can create is a /28 (16 IP addresses ) AWS reserves the first four IP address and the last IP address of every subnet for internal networking purposes. e.g. a subnet defined as a /28 has 16 available UP addresses, subtract the 5 ips needed by AWS to yield 11 Ip addresses for use within the subnet.

Subnets reside within one availability zone and cannot span zones. After creating a VPC you can add one or more subnets in each availablity zone.

**You can have multiple subnets in one availability zone**

**Subnets can be classified as public, private or VPN only.**

**A public subnet is one that the associated route table directs the subnet's traffic to the VPC's Internet Gateway.**

**A private subnet is one that is associated with a route table that does not direct the subnet's traffic to the Amazon VPC's Internet Gateway**

**A VPN only subnet is one in which the associated route table directs the subnet's traffic to Amazon's VPC's Virtual Private Gateway**

# Route Tables

A route table is a logical construct within an VPC that contains a set of rules... which are called routes that are applied to the subnet and used to determine where network traffic is directed. A route table's routes are what permit EC2 instances within different subnets within a VPC to communicate with each other. You can modify route tables and add your own custom routes. You can also use route tables to specify which subnets are public (by directing Internet traffic to the **Internet Gateway**)

**Each route table contains a default route called the local route**, which enables communication within the VPC, adn this route cannot be modified or removed. Additional routes can be added to direct traffic to exit the VPC via the Internet Gateway. The VPG(**virtual Private Gateway**) or the NAT instance.

# You should remember :

  * Your VPC has an implicit router

  * Your VPC automatically comes with a main route table that you can modify.

  * You can create additional custom route tables for your VPC

  * Each subnet must be associated with a route table, which controls the routing for the subnet. If you don't explicitly associate a subnet with a particular route table,
  the subnet uses the main route table. *by default*

  * You can replace the main route table with a custom table that you've created so that each new subnet is automatically associated with it.

  * Each route in a table specifies a destination CIDR and a target. e.g. traffic destined for 172.16.0.0/12 is targeted for the Virtual Private Gateway. AWS uses the most specific route that matches the traffic to determine how to route the traffic.

## Internet Gateways

An Internet Gateway is a horizontally scaled, redundant and highly available VPC component that allows communication between instances in VPC and the Internet. An Internet Gateway provides a target in the VPC's route tables for Internet-routable traffic, and it performs network address translation for instances that have been assigned public IP addresses.

EC2 instances within VPC are only awayre of their private IP addresses. When traffic is sent from the instance to the Internet, the Internet Gateway translates the reply address to the instance's public IP address(or EIP address)and maintains the one-to-one map of the instance private Ip address and public IP address. When an instance receives traffic from the Internet, the IGW translates the destination address ()
