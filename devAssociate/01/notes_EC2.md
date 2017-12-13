# EC2

EC2 is a compute service that provides an on-demand and scalable computing service on the cloud.
It eliminates the need for upfront investment on hardware with *pay as you go* model. Like a utility.


## Aspects of EC2   

**EC2 is a virtualized environment on the cloud**

**An instance is a provisioned ec2 resource.**

**The AMI or Amazon Machine Image are preconfigured templates, which include base operating
systems and any additional software in a single package**

**The AMI provides a combination of CPU, memory, storage and networking capacity for provisioning instances.
These combinations are called instance types**

**It provides a highly secured mechanism to log in to your instances using key pairs.
A key pair is a combination of private and public keys. When an instance is provisioned, a public key resides on the e2
instance and a private is provided to the provisioning user. A key pair is used for login to an instance associated with the key pair**

**AWS provides a temp and persistent storage for your EC2 instances**

## An Instance store is a term for temporary Storage.

**All data is lost at the instance storage is terminated, stopped or restarted.**

**Amazon provides multiple physical locations for provisioning ec2 instances**

## AZ's
//todo
****

# Pricing

Free Tier is available for one year. t2.micro for 750 hours per month. You can run this for 24X7 or run 10 instances for 15 hours.

EC2 instances on a per hour basis and actual EC2 pricing depends on instances type, size, and payment model.

## On Demand

EC2 charges hourly by **default** as on-demand. In this mode, the CPU and memory is used as and when required.
There is no need to have any long-term commitment. Compute capacity can be increased or decreased.

**When to use On-demand instances:**

  * This payment mode is suitable when you create new infrastructure in a cloud and are not sure what instance type and
  number of instances are required.

  * You can even use **On-Demand** instances for carrying out tests

  * When low-cost and flexible compute is required without any upfront payment or long-term commitment

  * You can use **On-Demand** instances for short term applications with unpredictable workloads.


# READ THIS NOW, AND REMEMBER THIS LATER - Hanz and Franz

### On Demand instances are charged on an hourly basis

### It is the costliest pricing on aws

### When an instance is stopped, a partial EC2 hours are rounded UP

### ON Demand instances can be launched through the AWS Console.

### You can launch up to 20 instances at a time using the RunInstance API  


**Spot instances:**
It allows the devs to bid for a spare EC2 compute capacity. Usually these computes can be 90 % cheaper than On-Demand instances.
It requires you to bid and it specifies the max price you want to pay per instance along with type and AZ. You get your spot instances depending
on Demand instances. It requires you to bid and it specifies the maximum price you want to pay per instance along with instance type and AZ. This way
you get your spot instance, based on availability of spare capacity in the specified AZ. Meaning ---> **it's all about the supply and demand ratio of
spare capacity** As the demand for a specific instance type in spot instance increases, spot instance prices also increase. WHen the current spot instance price
goes above your bid price, AWS terminates your spot instance. Before terminating ec2 spot instances, AWS gives a notification... 2 minutes before termination.

  **When to use spot instances:**

 * When you need a cheap resources for a temp purpose

 * When your application runtime is flexible and application workload can be interrupted

 * When you need a large amount of additional computing capacity

**Things to remember while spot instances:**

  * If a spot instance is terminated by AWS before completing an hour, you are not charged for that hour.

  * If you terminate a spot instance in between an hour, you're charged for that incomplete hour.

  * SPot instances cannot be stopped and restarted. If a spot instance is stopped -- it gets terminated.


**Reserved Instances:** Provides significant discount for On-demand per hour prices. You can **Reserve Instance for a one or three year duration for your predictable resource
demand. It offers 3 types of reservation request:**

## All upfront

## Partial upfront

## No Upfront

**All upfront** - you can save up to 75% in comparison to On-demand pricing.

**Partial Upfront** - a partial amount of total billing is paid upfront and
the remaining amount is paid on a monthly basis.

**No Upfront** --wherein you pay only on a monthly basis for Reserved Instances. Here you can still save 35% to 40% of cost in comparison to
'On-Demand' pricing.

## When to use Reserved instances :

  * WHen you need to run a predictable and consistent workflow for a long persiod

  * All applications require steady state infrastructure

  * Users or organizations who can commit to a one or three year duration

## Things to remember about Reserved Instances :

* When you reserve an EC2 instance -- YOU Reserve an instance type and not a specific instance.

* Discounted prices are automatically applied on a monthly bill basis on an instance type usage in the account.

* EC2 instances can be reserved at the AZ or at the region. Reserved Instances at the region level gives flexibility to select
an instance type and AZ

* Payment mode (i.e. All Upfront, Partial Upfront, or No Upfront) and term (one year or 3 years) can be selected. It is recommended to reserve for a year only,
as AWS periodically reduces resource pricing

## Dedicated Hosts :

In the default scenario when you launch an ec2 instance it is provisioned in a virtual environment hosted on shared hardware. Though each instance has its own dedicated resources it shares
the hardware platform with other accounts. WHen using Dedicated Hosts, ec2 instances from the same AWS account are physically isolated on dedicated hosts that is a hypervisor. A dedicated ec2
instance using the same architecture may share hardware within the AWS account.

**It also gives control over host hardware. It helps to meet corporate compliance and regulation requirements. THe pricing model for Dedicated Hosts also can be On-Demand**, reserved
which means at 70% or spot at 90%

## Dedicated ec2 instance has two pricing components:

 **Applicable price per hour, based on the selected pricing model**

 **Additionally, dedicated per region fees. It is $2, applicable per hour for at least one Dedicated ec2 instance of any type running per region**

# EC2 instance lifecycle --

### An Ec2 instance passes through various statuses throughout its lifecycle. It all starts with launching an ec2 instance using a specific AMI.


<a>
  <img src="https://github.com/stan-alam/AWS/blob/develop/devAssociate/01/EC2_lifeCycle.svg" width="150%" height="150%">
</a>


# An instance launch

An instance when launched automatically goes into the pending state. It depends upon what instance type you have selected, it is launched on a host computer inside AWS virtualized hardware.

  * The instance is launched using the AMI you choose for provisioning.

**You have to wait till the instance is finished initializing and is running, then you can connect to it.**

  * You will be charged for every hour that instance is used once it enters the running state.

# Instance stop and starts

**If you have launched an EC2 instance with an EBS-backed volume, you can start and stop your instance as needed**

  * Sometimes stopping and starting the instance over, can get it to work in the case it fails deploy.

When stopping an instance, AWS initiates the OS shutdown process and the instance is set to a stop state. As soon as the OS shuts down the instance goes into the stop state
You will not be charged for that instance.

**AWS does charge you for any EBS volume or Elastic IPs associated with that instance**

### You can change the instance type or disassociate/associate root volume of the instance when the instance is in a stopped state.

**When an instance is started back -- it enters a pending state. AWS moves the instance to another host computer once it is stopped and started again.**
The instance may remain in the same host machine if there are no hardware related issues on that host computer. This is a tactic that AWS uses for automatically
resolving hardware related issues on an instance.

**On an ec2 classic** AWS allocates a new ip4 address every time an instance is stopped and stared again.

**An EC2 on a Virtual private cloud retains its IP address even if it's stopped and started again**

**Every time an instance transitions from a stopped to a running state, AWS charges a full billing hour** That means your billing hour count increases every time you stop and start an instance.

### It is recommended to exercise the stop and start options wisely

# Instance Reboot

An ec2 instance can be rebooted in various ways. i.e. you can use the AWS console, or AWS-cli, AWS API,, or you can restart the instance directly from the operating system.
**Rebooting is equivalent
