# AWS Private Cloud

**What is a computer network and how does it relate to the VPC (who is your daddy and what does he do? - Arnold )**

A computer network is basically two or more computers interconnected for sharing resources and communicating between each other.

    * Some computers are restricted to be accessed from within an organization (LAN, WAN)

    * Some computers are required to be accessed from within the organization well from inside (VPN)

**Subnet** - The segment that logically isolates the resources in a network is called a **subnet**.
In an organization, a network may be subdivided into multiple subnets. One or more public/private subnets


IP is used to identify by unique number the addresses from which these networks are to communicate.

------------------------------------------------------------------------------------------------------------------------------------------

🙊

## VPC

**A vpc is similar to a computer network that can be created in on premise data center. The VPC is setup just as any network in an organization is**
## The difference is that it is a virtual environment within a public cloud. Wherein the virtual network is logically isolated from similar networks
## within the cloud.

# VPC components:

# Elastic Network Interface (ENI)

**Route Table**

**IGW**

**Egress-only IGW**

**NAT**

**DHCP option sets**

**DNS**

**VPC peering**

**VPC endpoint**

**ClassicLink**


VPC can be created on demand!

Each aws account can access multiple regions and each region has two or more **AZs.** A vpc can be created in any region and can span to multiple AZs.

    "Within one AWS account, several networks may exist (such as 10.0.0.0/16 and
     10.1.0.0/16). For example, an organization can work on several different projects at
     the same time, and for each of the projects they can create individual networks VPC
     to isolate traffic and AWS resources. Each VPC spans across a region, in which it is
     created. An organization may also create multiple VPCs for each of the regions
     where their offices are located."


## Classless Inter-domain Routing (CIDR):
**CIDR** - When creating a VPC you need to specify an IP range for that particular VPC. This IP range is called the **CIDR**

😾

# Subnets


Subnet - **subnetwork**. When creating a subnet you must specify a unique **CIDR** block for the subnet. This CIDR block has to be a subset of the VPC CIDR block. **Each subnet must be in within a single AZ as a subnet cannot span multiple AZ**

**Subnets are categorized by routing table. i.e. private or public based on their security profile.**


# Private Subnet

Traffic from the Internet cannot directly access private subnets. A private subnet is a subset of a network wherein resources within a subnet are isolated and restricted for access from within the VPC. Similarly any outgoing traffic from a private subnet cannot directly access the Internet.

**Network Address Translator** -- Any traffic to the Internet is either restricted or it is through a **Network Address Translator**
Resources in a private subnet have a private IP, that is only accessible within the **Virtual Private Cloud**

**route table** defines the routing of the traffic to and from the subnet and ultimately determines whether a subnet is a private or a public
subnet based on whether it has a directs route to the **INTERNET GATEWAY** or **IGW**

# Public subnet

A public subnet is subset of a network wherein resources within a subnet are isolated and can be accessed from with the VPC and well as the Internet.
All incoming traffic can directly access the resources located in a public subnet. Resources in public subnet are assigned a public IP of which is
accessible by the Internet. Unlike a private subnet, **traffic out from a public subnet is NOT routed to a Network Address Translator**

:floppy_disk:

# IP addressing
_

When an EC2 instance is launched it is given an IP address and an IPv4 DNS hostname. The IP address and DNS hostname depends on whether the instance
is launched in an EC2-Classic platform or a VPC. When an instance is launched in VPC, it supports both IPv4 and IPv6. Classic does not support the latter.

By default AWS uses IPv4 addressing for the instance of VPC Classless Inter-Domain Routing. This is the default behavior of EC2 instances and VPC.
To change this a user can assign a IPv6 to VPC and this will allow the dev to assign IPv6 addresses to any instance in that VPC.

## Private IP

Private IP addresses are used in communication between the instances within the same network. When an instance is launched, AWS uses **Dynamic Host Configuration Protocol.

**Dynamic Host Configuration Protocol** assigns a private IP address to the instance. Apart from a private IP address, an instance is **also assigned an internal DNS**

e.g. ip 10-5-200-21.ec2.internal -> Can be used with a DNS name to communicate across the same network... however, the DNS cannot be resolved outside of the network or over the Internet since it is a **Private DNS**.
