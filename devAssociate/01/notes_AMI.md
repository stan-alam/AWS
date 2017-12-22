# Amazon Machine Image

Reference URL: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instances-andamis.html

To cater for customized usage, AWS offers the AMI feature -- Amazon Machine Image

This includes specific requirements for the end user, such as EBS volumes -- their sizes, preinstalled software, and OS.

**An AMI contains a set of information to launch an instance:**


  * There is a template which is included that contains the OS, the application server, and other additional application software

  * "It contains launch permissions describing which AWS account can use the AMI to spin up a new instance."

  * "It also contains block mapping, describing the volume information to be "

You are able to specify which AMI while launching an instance. An AMI can be used to launch multiple/ as many as required. However, one ec2 instance can be based on a single AMI.

Reference URL: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instances-andamis.html

**Preconfigured AMIs** are available in the AWS marketplace. Including base editions provided by AWS, and also **by the AWS community**.

All AWS AMI's are stored on S3 buckets. **The AMI is not visible on S3 for external users and/or clients.** You choose the AMIs only when you launch an instance.

These two characteristics are critical in choosing the correct AMI configuration. Not just the OS and third party software.

  * Root Device volume type

  * Virtualization type

## Understand these characteristics now, so you can remember later- Hans and Franz

# ROOT DEVICE TYPES

WHen choosing an AMI, it is important to understand **root device** associated with the AMI.
A bootable block device of the ec2 instance is called the *root device*.
**An Ec2 instance is created from an AMI**

# An Amazon Machine Image can have either two of the root device TYPES

## Amazon EBS-backed AMI(uses permanent block storage to store data)
## Instance store-backed AMI( which uses ephemeral block storage to store data)

You can view the root device type at the AWS console, when you're selecting an AMI

## The EBS-backed AMIs launch faster than instance-stored AMIs --
**this is because you only need to create the volume from a snapshot for the booting instance.**

**AMIs with ephemeral storage take longer to boot because of the ancillary software ( all the extra software )

**ephemeral storage devices are directly connected to the host computer.. this makes data access faster for that AMI** However data gets wiped out on restarting or shutting down the EC2 instance.

## EBS-backed instances can be stopped but if ephemeral-based instances are stopped/terminated all data is lost forever from storage!

# EC2 instance virtualization TYPES

Similar to root device type, virtualization type is another aspect of AMI. THis is also critical to understand/remember before you choose your AMI. **AN AMI CAN FALL INTO EITHER TWO OF THE FOLLOWING Virtualization TYPES.**

## Paravirtual (PV) : EC2 instance which boots by PV-GRUB

## Hardware Virtual Machine (HVM): EC2 instances boots by MASTER BOOT RECORD
## MBR

THe main differences lie in the way the instance boots up including the process and the ability of the ec2 instance to take advantage of any special hardware extensions, for better performance of CPU, network and storage devices.

For the best ec2 instance performance --it is highly recommended you use the latest instance type with **HVM AMIs** i.e the Hardware Virtual Machine

**In the case of the Hardware Virtual Machine the OS can run on vms without any modifications. Which makes the 'Hardware Virtual Machine'-based instances faster and
