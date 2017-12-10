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

### YOU
