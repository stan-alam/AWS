# Amazon Machine Image

Reference URL: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instances-andamis.html

To cater for customized usage, AWS offers the AMI feature -- Amazon Machine Image

This includes specific requirements for the end user, such as EBS volumes -- their sizes, preinstalled software, and OS.

**An AMI contains a set of information to launch an instance:**


  * There is a template which is included that contains the OS, the application server, and other additional application software

  * "It contains launch permissions describing which AWS account can use the AMI to spin up a new instance."

  * "It also contains block mapping, describing the volume information to be "

You are able to specify which AMI while launching an instance. An AMI can be used to launch
